package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	n := int64(40000)
	if len(os.Args) > 1 {
		if v, err := strconv.ParseInt(os.Args[1], 10, 64); err == nil && v > 0 {
			n = v
		}
	}

	var digest, c200, c201, c404 int64
	for i := int64(0); i < n; i++ {
		var raw string
		switch i % 4 {
		case 0:
			raw = "GET /health HTTP/1.1\r\nHost: localhost\r\nConnection: keep-alive\r\n\r\n"
		case 1:
			raw = fmt.Sprintf("POST /items/%d?mode=fast HTTP/1.1\r\nHost: localhost\r\nContent-Length: 11\r\n\r\nhello=world", i%97)
		case 2:
			raw = fmt.Sprintf("GET /users/%d HTTP/1.1\r\nHost: localhost\r\nX-Req-Id: %d\r\n\r\n", i%53, i)
		default:
			raw = fmt.Sprintf("GET /unknown/%d HTTP/1.1\r\nHost: localhost\r\n\r\n", i%19)
		}
		hdrEnd := strings.Index(raw, "\r\n\r\n")
		if hdrEnd < 0 {
			continue
		}
		head := raw[:hdrEnd]
		rbody := raw[hdrEnd+4:]
		eol := strings.Index(head, "\r\n")
		if eol < 0 {
			eol = len(head)
		}
		reqLine := head[:eol]
		sp1 := strings.IndexByte(reqLine, ' ')
		if sp1 < 0 {
			continue
		}
		method := reqLine[:sp1]
		rest1 := reqLine[sp1+1:]
		sp2 := strings.IndexByte(rest1, ' ')
		if sp2 < 0 {
			sp2 = len(rest1)
		}
		target := rest1[:sp2]
		qPos := strings.IndexByte(target, '?')
		if qPos < 0 {
			qPos = len(target)
		}
		path := target[:qPos]

		var st int64 = 404
		body := "not_found"
		if method == "GET" && path == "/health" {
			st = 200
			body = `{"status":"ok"}`
		} else if method == "POST" && strings.HasPrefix(path, "/items/") {
			st = 201
			body = fmt.Sprintf("created:%s:%d", path[7:], len(rbody))
		} else if method == "GET" && strings.HasPrefix(path, "/users/") {
			st = 200
			body = fmt.Sprintf("user:%s", path[7:])
		}
		resp := fmt.Sprintf("HTTP/1.1 %d OK\r\nContent-Length: %d\r\n\r\n%s", st, len(body), body)
		digest = (digest*31 + st*131 + int64(len(resp))) % 1000000007
		switch st {
		case 200:
			c200++
		case 201:
			c201++
		default:
			c404++
		}
	}
	fmt.Printf("digest=%d,200=%d,201=%d,404=%d\n", digest, c200, c201, c404)
}
