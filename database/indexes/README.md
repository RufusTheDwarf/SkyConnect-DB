# Index analysis

Run `analyze_indexes.sql` after importing data, record baseline plans, inspect existing PK/FK indexes and evaluate selectivity. Test candidate index order; equality predicates commonly precede range predicates for composite B-tree access. Query 2 also aggregates and sorts by a computed count; an index need not eliminate that sort. Only create justified non-redundant indexes and compare plans on the same dataset. Do not claim measured performance without execution.
