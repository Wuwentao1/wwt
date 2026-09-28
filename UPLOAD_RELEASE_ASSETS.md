# Final manual steps for GitHub Release

The connected GitHub interface used to prepare this repository can write
repository files but does not expose GitHub Release/tag-asset upload actions.
Complete these final steps in the GitHub web UI:

1. Open the repository `Wuwentao1/wwt`.
2. Open **Releases** and choose **Draft a new release**.
3. Create/select tag `v1.0.0` targeting the current `main` commit.
4. Use title: `JMLR Reproducibility Package v1.0.0`.
5. Paste the text from `RELEASE_NOTES_v1.0.0.md`.
6. Upload these two assets:
   - `jmlr-estimation-collapsibility-v1.0.0.zip`
   - `jmlr-estimation-collapsibility-v1.0.0.zip.sha256`
7. Publish the release.
8. Download the ZIP from the published release and verify:
   `Get-FileHash .\jmlr-estimation-collapsibility-v1.0.0.zip -Algorithm SHA256`
9. Confirm the hash is:
   `84e2a77d342f8347b10a1816567cb86f30a6731b77854026a0cfca5b2c6ef7ff`
10. Then connect the public repository to Zenodo and archive release `v1.0.0`.

Before the permanent DOI deposit, choose and add the intended release license.
