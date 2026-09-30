# JMLR reproducibility archive

Reproducibility materials for **Estimation Collapsibility under Markov Equivalence: Chain-Component Structure and Least Retained Sets**.

This repository is the public landing page for the reproducibility materials. It tracks citation/provenance metadata, release documentation, lightweight runnable source, checked summaries, and versioned frozen release assets.

## Current archived release: v1.1.0

GitHub Release:

`https://github.com/Wuwentao1/wwt/releases/tag/v1.1.0`

Zenodo record:

`https://zenodo.org/records/23051054`

Version DOI:

`10.5281/zenodo.23051054`

Concept DOI for all versions:

`10.5281/zenodo.23008609`

Version 1.1.0 extends the first frozen release with the E1 representation-matched MCCH/global-deletion experiment and the final E2 timing-v3 Gaussian and discrete end-to-end experiments used in the current JMLR manuscript.

The v1.1.0 Zenodo record contains both the original v1.0.0 base archive and the v1.1.0 E1/E2 addition:

- `jmlr-estimation-collapsibility-v1.0.0.zip`
  - SHA-256: `84e2a77d342f8347b10a1816567cb86f30a6731b77854026a0cfca5b2c6ef7ff`
- `jmlr-e1-e2-v1.1.0.zip`
  - SHA-256: `b3782ecca7a4067cebe5d7f893355b6ca2f7c94b30262b999f3830c150f66819`

See `ARCHIVE_SHA256.txt`, `metadata/PUBLIC_DEPOSIT.md`, and `metadata/e1_e2/VALIDATION_REPORT.md`.

## Version history

### v1.0.0

- GitHub Release: `https://github.com/Wuwentao1/wwt/releases/tag/v1.0.0`
- Zenodo record: `https://zenodo.org/records/23008610`
- Version DOI: `10.5281/zenodo.23008610`
- Base archive SHA-256: `84e2a77d342f8347b10a1816567cb86f30a6731b77854026a0cfca5b2c6ef7ff`

Version 1.0.0 remains unchanged for versioned reproducibility.

### v1.1.0 additions

The repository includes the checked E1/E2 source and summary materials used in the current manuscript:

- `code/e1_e2/`: standalone E1 and final E2 timing-v3 implementation;
- `results/e1_e2/`: checked E1 summaries and E2 timing-v3 summary/headline CSVs;
- `metadata/e1_e2/VALIDATION_REPORT.md`: consistency checks against the manuscript;
- `metadata/e1_e2/RAW_RECORDS_MANIFEST.csv`: sizes and SHA-256 hashes for the raw query-level files;
- `metadata/e1_e2/FILE_MANIFEST_SHA256.csv`: file manifest for the E1/E2 release asset;
- `RELEASE_NOTES_v1.1.0.md`: release notes for v1.1.0.

The large raw query-level E1/E2 records are kept in the frozen v1.1.0 release asset rather than duplicated in the lightweight repository tree.

## Hardware and version-control provenance

The original experiment workstation used two Intel Xeon Silver 4215R processors (16 physical cores / 32 logical processors in total) and 128 GB RAM. The preserved experiment environment capture attempted `git rev-parse HEAD`, but the experiment directory was not a Git repository at run time. Therefore no original-run commit SHA is claimed. Public reproducibility versions are identified by their curated release commits/tags.

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

The v1.0.0 complete source tree is included in its frozen release ZIP. The repository exposes the primary entry point and frozen configuration under `code/main/`.

For the E1/E2 experiments added in v1.1.0, use `code/e1_e2/README.md`. The manuscript E2 timing results use the **timing-v3** entry points; the initial E2 timer is retained only for the smoke/validation workflow.

## Citation

For exact reproducibility of the current manuscript, cite the version-specific DOI:

- DOI: `10.5281/zenodo.23051054`
- Record: `https://zenodo.org/records/23051054`
- Version: `1.1.0`
- License: Creative Commons Attribution 4.0 International (CC BY 4.0).

For the evolving collection across all archived versions, the Zenodo concept DOI is `10.5281/zenodo.23008609`.
