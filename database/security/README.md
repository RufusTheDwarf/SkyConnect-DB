# Roles and accounts

Execution order after schema approval: create roles, grant privileges, create local users, assign roles and set default roles. Use `03_create_users.local.sql` for actual account creation; it is excluded from Git. Keep real credentials out of reports and screenshots. Verify each role with independent allowed and denied tests. See [privilege planning](../../docs/security.md).
