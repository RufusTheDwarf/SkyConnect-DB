# Security and role planning

| Proposed role | Required scope |
| --- | --- |
| `role_admin` | Full database control and account/role administration; review global account privileges separately |
| `role_flight_manager` | Read relevant reference data; create and modify flights and schedules |
| `role_reservation_agent` | Read relevant flight data; create/update passengers and reservations |
| `role_checkin_agent` | Read required passenger/reservation data; update seat and approved check-in field if present; no insert/delete reservation or flight updates |
| `role_analyst` | Read-only access to all assignment data |

This is a proposed matrix, not executed grants. Validate the exact tables and permitted columns with the teacher; do not grant blanket write access. Create one test user per role and verify positive and negative actions with separate sessions. Use local throwaway data for write tests and avoid personal data in Git.
