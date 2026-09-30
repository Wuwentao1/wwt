# E1/E2 validation report

This report was generated from the supplied `E1_E2_JMLR_experiments_complete.rar`
before the GitHub upload.

## Structural checks

- E1 raw records: **9,600** rows; duplicate query keys: **0**.
- E1 returned-set agreement: **9,600/9,600**.
- E1 positive kernel times: **all rows**.
- E1 configuration summaries: **96**.
- E2 timing-v3 Gaussian: **5,400** rows; duplicate query keys: **0**.
- E2 timing-v3 discrete: **10,800** rows; duplicate query keys: **0**.
- E2 timing-v3 discrete valid rows: **10,800/10,800**.
- E2 component times: **all positive and finite**.

## Checks against manuscript values

- E1 configuration-level global/MCCH ratio:
  median = **2.684154**,
  range = **0.308562--27.999589**.
- E1 median query-level simpliciality-test ratio:
  **63.948504**.
- E1 median relevant-component vertex fraction:
  **0.254**.
- Gaussian maximum full/MCCH mean discrepancy:
  **6.939e-16**.
- Gaussian maximum full/MCCH covariance discrepancy:
  **5.764e-15**.
- Discrete maximum full/MCCH cell discrepancy:
  **1.665e-16**.
- Discrete maximum full/MCCH total-variation discrepancy:
  **1.804e-16**.

The supplied `final/cold_overall.csv` contains:
- Gaussian Full/MCCH = 13.700554;
- Gaussian DAG ancestor/MCCH = 1.396194;
- Discrete Full/MCCH = 10.444835;
- Discrete DAG ancestor/MCCH = 1.226304.

These agree with the rounded values reported in the manuscript.

## Timing-total arithmetic

The maximum absolute differences between stored totals and the sums of their
stored component times are at floating-point roundoff scale:

- gaussian_full: `9.714e-16` seconds.
- gaussian_ancestor: `2.012e-16` seconds.
- gaussian_mcch: `4.996e-16` seconds.
- discrete_full: `6.883e-15` seconds.
- discrete_ancestor: `6.106e-16` seconds.
- discrete_mcch: `8.049e-16` seconds.

## Reproducibility issue corrected for the repository version

The supplied package contains both the original E2 timer and the final
`timing-v3` implementation. The supplied `run_all.R` still routed
`e2-gaussian` and `e2-discrete` to the original timer, even though the
manuscript values are taken from `output/e2_timing_v3/`. The repository version
therefore changes the final E2 entry points to `R/e2_timing_v3.R` and
`R/summarize_e2_timing_v3.R`. The original E2 timer is retained only for the
small smoke/validation workflow.

The supplied `FILE_MANIFEST.tsv` also omitted the timing-v3 scripts. A new
manifest is generated for the repository/release package.
