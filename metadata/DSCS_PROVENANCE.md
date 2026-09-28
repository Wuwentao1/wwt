# DSCS extended eight-size timing provenance

The source workbook for the historical extended eight-size DSCS timing values is `data/legacy/judge_coll.xlsx`. The authoritative DSCS values are the **left half** of Sheet1: blocks A:D and E:H, with the DSCS column in B and F, respectively.

The experiment has 8 graph sizes, 4 degree levels, and 4 target-set sizes, giving 128 configurations. Each configuration contains 100 target-query timing observations, so the experiment comprises **12,800 DSCS timing observations**.

The workbook stores these observations only through a configuration-level mean and nominal standard error for each of the 128 configurations. `DSCS_original_aggregate_judge_coll_left.csv` extracts those 128 mean/SE pairs at the precision stored in the workbook and records `queries_summarized=100` for every row. Thus this CSV represents all 12,800 observations through their 128 configuration summaries; it is not a reconstruction of the 12,800 individual timing values.

`DSCS_extended_8size_displayed_aggregate.csv` preserves the rounded values used in the supplement/figure source. `DSCS_left_source_reconciliation.csv` verifies that all 128 displayed cells are obtained from the left-side `judge_coll.xlsx` values under the documented presentation rounding.

The workbook `DSCS_DCR_DefCau_实验结果.xlsx` is retained for separate legacy construction material. It is **not** the source of the DSCS verification figure.
