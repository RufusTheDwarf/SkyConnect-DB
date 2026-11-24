# Test plan

| Test | Expected evidence | Status |
| --- | --- | --- |
| Schema and foreign keys | Approved tables and constraints | Pending |
| TSV import | Counts match; 0 skipped; 0 warnings | Pending |
| Query correctness | Results and explanations for Q01–Q15 | Pending |
| Index comparison | Baseline and post-change plans | Pending |
| Role authorization | Allowed and denied actions per user | Pending |
| Flight cancellation | Flight and reservations removed atomically; rollback verified | Pending |
| Seat reservation | No duplicate seat; concurrency outcome verified | Pending |

The SQL files in this directory are plans, not a passing automated suite. Use an isolated test database for changes. Record actual outcomes, versions and evidence in the report.
