# JMLR Reproducibility Package v1.1.0

This release extends v1.0.0 with the E1 and E2 experiments used in the JMLR
manuscript **Estimation Collapsibility under Markov Equivalence: Chain-Component
Structure and Least Retained Sets**.

## Added

- E1: representation-matched MCCH versus global protected c-simplicial
  deletion on 9,600 paired queries.
- E2 timing-v3: end-to-end Gaussian closure, fitting, and target-inference
  records for 5,400 queries.
- E2 timing-v3: end-to-end binary/ternary discrete records for 10,800 queries.
- Repeated-query timing-v3 summaries for cached-existing and
  amortized-from-scratch workloads.
- Checked E1/E2 summary tables used by the manuscript.
- A validation report and SHA-256 file manifest.

## Reproducibility correction

The originally supplied E1/E2 package contained both an initial E2 timer and
the final timing-v3 implementation, but its `run_all.R` still routed the E2
commands to the initial timer. In v1.1.0 the public entry points explicitly use
`R/e2_timing_v3.R` and `R/summarize_e2_timing_v3.R`, which are the sources of
the E2 values reported in the manuscript. The initial timer is retained only
for the small smoke/validation workflow.

## Versioning

The existing v1.0.0 release and Zenodo record are not modified. v1.1.0 should
be published as a new GitHub release and deposited as a new Zenodo version.
