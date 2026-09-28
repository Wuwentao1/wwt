# JMLR reproducibility archive

Reproducibility materials for **Estimation Collapsibility under Markov Equivalence: Chain-Component Structure and Minimal Retained Sets**.

This release consolidates the experiment code, available query-level records, exact random-graph objects for the redesigned main experiments, environment metadata, benchmark checksums, and legacy numerical provenance used in the JMLR revision.

## Hardware and version-control provenance

The original experiment workstation used two Intel Xeon Silver 4215R processors (16 physical cores / 32 logical processors in total) and **128 GB RAM** (8 x 16 GB Hynix modules; Windows reports 127.66 GiB total physical memory). The preserved redesigned-experiment environment capture attempted `git rev-parse HEAD`, but the experiment directory was not a Git repository at run time. Therefore no historical experiment commit SHA is claimed. The public reproducibility release is identified by its own immutable release commit/tag, which is distinct from the unavailable historical run commit.

## What is included

- Primary six-size verification: 26,880 paired graph-target queries / 53,760 method rows, with graph and query IDs/seeds, hashes, repeated timings, method order, decisions, stages, phase times, and operation metrics.
- Primary six-size construction: 9,600 paired queries / 19,200 method rows, with graph/query IDs/seeds, timings, output hashes/sizes, and ancestor/hull diagnostics.
- Higher-degree verification/construction records.
- Fixed-network benchmark target-query records and graph/checksum metadata.
- Matched peeling-CMSA records for 12,800 queries.
- Gaussian likelihood records for 10,800 queries; discrete likelihood records for 16,200 queries; discrete retained-set cross-check for 2,700 queries.
- Controlled hull-stress/confirmatory records and exhaustive `n <= 5` validation summaries.
- Software/compiler/CPU/OS/RAM metadata and a consolidated seed inventory.
- Extended-eight-size DSCS source record: 12,800 timing observations (128 configurations x 100 queries) summarized by the 128 configuration-level mean/SE pairs stored in the **left half of `judge_coll.xlsx`**. The displayed Supplement Tables S1--S4 values reconcile to all 128 source cells after presentation rounding.

## Provenance limits

The archive does **not** reconstruct unavailable historical records. For the extended-eight-size DSCS experiment, `judge_coll.xlsx` preserves the 12,800 observations only through 128 configuration-level mean/SE summaries; the individual 12,800 timing values are not present in the supplied workbook. Likewise, the historical eight-size MCCH-DCR study is preserved through its aggregate workbook rather than one-row-per-query timing records. The historical Git commit is unavailable because the experiment directory was not a Git repository when the environment capture was run. See `metadata/UNRESOLVED_BEFORE_PUBLICATION.md` and `metadata/HISTORICAL_GIT_STATUS.md`.

## Reproduction

The primary redesigned driver is under `code/main/`. Run `Rscript run_all.R` from that directory after installing the listed R/Bioconductor dependencies. Additional validation code is under `code/additional/`. `metadata/raw_records_manifest.csv` documents the record unit and completeness for each experiment family.

## Public release and citation

The repository release tag identifies the curated public package; it must not be described as the historical commit of the original experiment run. A persistent DOI should be assigned by an archival repository such as Zenodo. After the DOI is minted, update the citation metadata and the two macros in `overleaf/reproducibility_postdeposit.tex` in a subsequent documentation-only commit; do not alter archived numerical records.

The frozen ZIP checksum is published alongside the release so readers can verify byte-for-byte identity of the archive.
