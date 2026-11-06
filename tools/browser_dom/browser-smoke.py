#!/usr/bin/env python3
"""Serve a compiled DOM fixture and check it in headless Chromium."""

from functools import partial
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import os
import re
import subprocess
import sys
from threading import Thread


class Handler(SimpleHTTPRequestHandler):
    extensions_map = {
        **SimpleHTTPRequestHandler.extensions_map,
        ".js": "text/javascript",
        ".wasm": "application/wasm",
    }

    def log_message(self, format, *args):
        pass


directory = Path(sys.argv[1])
server = ThreadingHTTPServer(
    ("127.0.0.1", 0), partial(Handler, directory=str(directory))
)
thread = Thread(target=server.serve_forever, daemon=True)
thread.start()
try:
    port = server.server_address[1]
    result = subprocess.run(
        [
            os.environ.get("CHROME", "google-chrome"),
            "--headless=new",
            "--no-sandbox",
            "--disable-gpu",
            "--disable-dev-shm-usage",
            "--disable-background-networking",
            "--virtual-time-budget=10000",
            f"--user-data-dir={directory / 'chrome-profile'}",
            "--dump-dom",
            f"http://127.0.0.1:{port}/",
        ],
        timeout=25,
        stdin=subprocess.DEVNULL,
        capture_output=True,
        text=True,
    )
    if result.returncode != 0 or not re.search(
        r'<html[^>]*data-status="pass"', result.stdout
    ):
        raise SystemExit(
            f"Browser smoke failed (exit {result.returncode}):\n"
            f"{result.stdout}\n{result.stderr}"
        )
    print("PASS real browser Wasm DOM load and click callback")
finally:
    server.shutdown()
    server.server_close()
