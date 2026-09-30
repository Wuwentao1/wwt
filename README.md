# JMLR reproducibility archive

Reproducibility materials for **Estimation Collapsibility under Markov Equivalence: Chain-Component Structure and Least Retained Sets**.

This repository is the public landing page for the reproducibility materials. It tracks citation/provenance metadata, release documentation, lightweight runnable source, checked summaries, and versioned frozen release assets.

## Published frozen archive: v1.0.0

Release asset:

`jmlr-estimation-collapsibility-v1.0.0.zip`

SHA-256:

`84e2a77d342f8347b10a1816567cb86f30a6731b77854026a0cfca5b2c6ef7ff`

GitHub Release:

`https://github.com/Wuwentao1/wwt/releases/tag/v1.0.0`

Zenodo record:

`https://zenodo.org/records/23008610`

DOI:

`10.5281/zenodo.23008610`

See `ARCHIVE_SHA256.txt` and `metadata/PUBLIC_DEPOSIT.md`.

## E1/E2 additions for v1.1.0

The repository now includes the checked E1/E2 source and summary materials used
in the current JMLR manuscript:

- `code/e1_e2/`: standalone E1 and final E2 timing-v3 implementation;
- `results/e1_e2/`: checked E1 summaries and E2 timing-v3 summary/headline CSVs;
- `metadata/e1_e2/VALIDATION_REPORT.md`: consistency checks against the manuscript;
- `metadata/e1_e2/RAW_RECORDS_MANIFEST.csv`: sizes and SHA-256 hashes for the raw query-level files;
- `metadata/e1_e2/FILE_MANIFEST_SHA256.csv`: release-asset file manifest;
- `RELEASE_NOTES_v1.1.0.md`: planned v1.1.0 release notes.

The large raw query-level E1/E2 records are kept in the frozen v1.1.0 release
asset rather than duplicated in the lightweight repository tree. See
`metadata/e1_e2/RAW_DATA_UPLOAD_REQUIRED.md` and
`metadata/e1_e2/RELEASE_ASSET_SHA256.txt`.

The existing v1.0.0 GitHub Release and Zenodo record remain unchanged. After
the v1.1.0 release asset is uploaded and its checksum verified, v1.1.0 should
be deposited as a new Zenodo version and the manuscript archive macros should
be updated to that immutable record.

## Hardware and version-control provenance

The original experiment workstation used two Intel Xeon Silver 4215R processors
(16 physical cores / 32 logical processors in total) and 128 GB RAM. The
preserved redesigned-experiment environment capture attempted
`git rev-parse HEAD`, but the experiment directory was not a Git repository at
run time. Therefore no historical experiment commit SHA is claimed. Public
reproducibility versions are identified by their curated release commits/tags.

## What the v1.0.0 frozen release contains

- Primary six-size verification: 26,880 paired graph-target queries / 53,760 method rows.
- Primary six-size construction: 9,600 paired queries / 19,200 method rows.
- Higher-degree verification/construction records.
- Fixed-network benchmark target-query records and graph/checksum metadata.
- Matched peeling-CMSA records for 12,800 queries.
- Gaussian likelihood records for 10,800 queries; discrete likelihood records for 16,200 queries; discrete retained-set cross-check for 2,700 queries.
- Controlled hull-stress/confirmatory records and exhaustive `n <= 5` validation summaries.
- Software/compiler/CPU/OS/RAM metadata and a consolidated seed inventory.
- Extended-eight-size DSCS source record summarized by 128 configuration-level mean/SE pairs.

## Reproduction

The v1.0.0 complete source tree is included in its frozen release ZIP. The
repository exposes the primary entry point and frozen configuration under
`code/main/`.

For the E1/E2 experiments added for v1.1.0, use `code/e1_e2/README.md`. In
particular, the manuscript E2 timing results use the **timing-v3** entry points;
the initial E2 timer is retained only for the smoke/validation workflow.

## Citation

Until v1.1.0 is published and deposited, the immutable public archive remains
v1.0.0:

- DOI: `10.5281/zenodo.23008610`
- Record: `https://zenodo.org/records/23008610`
- License: Creative Commons Attribution 4.0 International (CC BY 4.0).
