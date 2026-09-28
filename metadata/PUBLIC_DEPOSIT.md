# Public deposit procedure

Recommended public tag: `v1.0.0`.

1. Publish the curated repository contents at the public release commit.
2. Attach the frozen ZIP and its `.sha256` sidecar to the GitHub Release without editing the ZIP.
3. Verify the downloaded release asset against the published SHA-256.
4. Connect the public GitHub repository to Zenodo and archive tag `v1.0.0` to obtain the version DOI and concept DOI.
5. Add the DOI/URL to the citation metadata and manuscript in a documentation-only follow-up commit; do not rewrite the archived numerical data or move the release tag.
6. Record the DOI, GitHub Release URL, release commit SHA, tag, and frozen ZIP SHA-256 together in the manuscript reproducibility statement.

A newly created Git commit/tag identifies the curated release; it must not be described as the historical commit of the original experiment run.
