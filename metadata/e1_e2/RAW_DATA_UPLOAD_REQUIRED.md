# v1.1.0 raw-data release asset

The lightweight repository tree contains the E1/E2 code, checked summaries,
headline tables, validation report, and SHA-256 manifests.

The full raw query-level records are packaged separately as the release asset:

`jmlr-e1-e2-v1.1.0.zip`

The expected SHA-256 is recorded in `RELEASE_ASSET_SHA256.txt`.

The ZIP contains:

- `raw/e1/e1_raw.csv` (9,600 paired E1 queries);
- `raw/e1/e1_graph_stats.csv`;
- `raw/e2_timing_v3/gaussian_raw.csv` (5,400 queries);
- `raw/e2_timing_v3/discrete_raw.csv` (10,800 queries);
- timing-v3 repeated-query raw/summary tables;
- checked E1 and E2 summaries;
- the corrected standalone E1/E2 source tree;
- a complete SHA-256 manifest.

After creating GitHub Release `v1.1.0`, upload this ZIP as a release asset and
verify its downloaded SHA-256 before creating the new Zenodo version.
