# E1/E2 experiments for the JMLR manuscript

This directory contains the standalone implementation for the E1 and E2
experiments reported in the JMLR manuscript
**Estimation Collapsibility under Markov Equivalence: Chain-Component Structure
and Least Retained Sets**.

## Which files reproduce the reported results?

### E1: MCCH versus global protected c-simplicial deletion

Use:

- `R/e1_mcch_vs_global.R`
- `R/helpers_graph.R`
- `R/helpers_timing.R`
- `src/e1_kernels.cpp`

Both procedures receive the same CPDAG, target set, C++ `PreparedGraph`, and
kernel-timing settings. The common graph-preparation time is recorded
separately and excluded from the paired kernel ratio.

The full design has 9,600 paired queries (96 configurations). Every query in
the supplied checked records has identical MCCH/global returned sets.

### E2: closure + fitting + inference

**The paper uses timing-v3.** The authoritative E2 implementation is:

- `R/e2_timing_v3.R`
- `R/helpers_timing_v3.R`
- `R/summarize_e2_timing_v3.R`
- the graph/Gaussian/discrete helpers in `R/`

The timing-v3 one-off boundary is

- full: `fit(V) + infer(V,R)`;
- representative-DAG ancestor: `closure + fit(An_G[R]) + infer`;
- MCCH: `closure + fit(R*) + infer`.

Graph generation, DAG-to-CPDAG conversion, and reusable adjacency-object
construction are input preparation and are excluded from the primary one-off
query totals. `PreparedGraph` construction is recorded separately and is
charged once in the from-scratch repeated-query regime.

The final timing-v3 records contain 5,400 Gaussian queries and 10,800 discrete
queries. All component times are positive and finite, and the target marginals
agree to machine precision under the compared reduction routes.

`R/e2_end_to_end.R` and `R/helpers_timing.R` are retained only because the
small `run_smoke.R` validation workflow uses them. They are **not** the source
of the E2 timing values reported in the manuscript.

## Requirements

R >= 4.3 is recommended. Required packages are `Rcpp`, `igraph`, `pcalg`,
`graph`, `data.table`, and `digest`; `ggplot2` is used for figures. `peakRAM`
is optional and is used only for auxiliary memory measurements.

Install dependencies with:

```bash
Rscript install_dependencies.R
```

## Smoke test

Before starting the full grid, run:

```bash
Rscript run_all.R smoke
```

The smoke test checks compilation, CPDAG conversion, E1 output equality, and
Gaussian/discrete target-marginal equality on a small design. It is a
correctness/installation check, not the final E2 timing experiment.

## Full reproduction

From this directory:

```bash
Rscript run_all.R e1
Rscript run_all.R e2-gaussian
Rscript run_all.R e2-discrete
Rscript run_all.R summary
Rscript run_all.R figures
```

or run all computational experiments sequentially with:

```bash
Rscript run_all.R all
```

The full jobs are intentionally not run by the smoke test.

## Expected primary record counts

- E1 raw paired queries: 9,600.
- E2 timing-v3 Gaussian queries: 5,400.
- E2 timing-v3 discrete queries: 10,800.
- E1 configuration summaries: 96.

The release manifest records SHA-256 hashes and sizes for the checked raw files.
Large raw CSVs are distributed in the frozen release asset rather than copied
into the lightweight repository tree.

## Important reporting conventions

1. E1 is a shared-representation kernel comparison. Common graph preparation
   is recorded separately.
2. E2 uses the generating DAG only as a fixed representative for the
   representative-DAG ancestor comparator; this is not a CPDAG-native method.
3. No pseudocounts are used in the discrete multinomial fits. Invalid parent
   configurations or an excessive exact-VE intermediate are marked as failures
   rather than silently approximated.
4. Repeated targets on one generated graph are clustered at the graph level in
   runtime summaries.
5. The raw records, deterministic seeds, failure flags, and mismatch artifacts
   should be retained in every frozen reproducibility release.
