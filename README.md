# JMLR reproducibility archive

Reproducibility materials for **Estimation Collapsibility under Markov Equivalence: Chain-Component Structure and Minimal Retained Sets**.

This repository is the public landing page for the reproducibility release. It tracks citation/provenance metadata, release documentation, and lightweight entry/configuration files. The **complete source tree, raw records, graph objects, benchmark files, and validation outputs are distributed in the frozen GitHub Release ZIP** so that the public release can be verified byte-for-byte.

## Frozen archive

Release asset:

`jmlr-estimation-collapsibility-v1.0.0.zip`

SHA-256:

`84e2a77d342f8347b10a1816567cb86f30a6731b77854026a0cfca5b2c6ef7ff`

See `ARCHIVE_SHA256.txt` and `UPLOAD_RELEASE_ASSETS.md`.

## Hardware and version-control provenance

The original experiment workstation used two Intel Xeon Silver 4215R processors (16 physical cores / 32 logical processors in total) and **128 GB RAM** (8 x 16 GB Hynix modules; Windows reports 127.66 GiB total physical memory). The preserved redesigned-experiment environment capture attempted `git rev-parse HEAD`, but the experiment directory was not a Git repository at run time. Therefore no historical experiment commit SHA is claimed. The public reproducibility release is identified by its own immutable release commit/tag, which is distinct from the unavailable historical run commit.

## What the frozen release contains

- Primary six-size verification: 26,880 paired graph-target queries / 53,760 method rows.
- Primary six-size construction: 9,600 paired queries / 19,200 method rows.
- Higher-degree verification/construction records.
- Fixed-network benchmark target-query records and graph/checksum metadata.
- Matched peeling-CMSA records for 12,800 queries.
- Gaussian likelihood records for 10,800 queries; discrete likelihood records for 16,200 queries; discrete retained-set cross-check for 2,700 queries.
- Controlled hull-stress/confirmatory records and exhaustive `n <= 5` validation summaries.
- Software/compiler/CPU/OS/RAM metadata and a consolidated seed inventory.
- Extended-eight-size DSCS source record: 12,800 timing observations (128 configurations x 100 queries) summarized by the 128 configuration-level mean/SE pairs stored in the **left half of `judge_coll.xlsx`**; all 128 displayed values reconcile after presentation rounding.

## Provenance limits

The archive does **not** reconstruct unavailable historical records. For the extended-eight-size DSCS experiment, `judge_coll.xlsx` preserves the 12,800 observations only through 128 configuration-level mean/SE summaries; the individual timing values are not present in the supplied workbook. Likewise, the historical eight-size MCCH-DCR study is preserved through its aggregate workbook rather than one-row-per-query timing records. See `metadata/UNRESOLVED_BEFORE_PUBLICATION.md` and `metadata/HISTORICAL_GIT_STATUS.md`.

## Reproduction

The complete runnable source tree is included in the frozen release ZIP. The repository also exposes the primary entry point and frozen configuration under `code/main/`. `metadata/raw_records_manifest.csv` documents the record unit and completeness for each experiment family.

## Public release and citation

Use tag `v1.0.0` for the first public reproducibility release. The release tag identifies the curated public package and must not be described as the historical experiment commit.

After the GitHub Release is published, connect this public repository to Zenodo and archive `v1.0.0`. Add the resulting DOI to `CITATION.cff` and the manuscript in a documentation-only follow-up commit; do not rewrite the release tag or archived numerical records.

Before the permanent DOI deposit, select and add the authors' intended release license.
