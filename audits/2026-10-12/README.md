**Edva audit — 2026-10-12**

- [Report](report.md): 19 findings with evidence and proposed fixes.
- [Gitea issue index](issues.md): milestone and one issue per finding.
- `issues/`: archived standalone issue descriptions and acceptance criteria.
- `reproductions/`: 27 source programs used in the audit. Several deliberately fail compilation, abort, or hang.
- `*-results.json` and `results.json`: observed probe outputs; `map-results.json` contains the corrected map reproductions.
- `doc-audit.json`: missing documentation evidence anchors.
- `regression.log`: baseline suite, 503 passed and 2 privileged-test compilation/harness failures.
- `tracking.json`: machine-readable issue mapping.

Run each reproduction in isolation with a compiler built from the audited commit. From the project root, for example:

```sh
bash -c 'ulimit -v 4194304; timeout 15s ./edva audits/2026-10-12/reproductions/map_duplicate/main.dva -o /tmp/edva-audit-map-duplicate -r'
```

No fixes are included in this archive. Source permalinks identify the audited commit; local evidence links are relative to this folder.
