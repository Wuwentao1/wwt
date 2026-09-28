# Fields remaining unresolved before permanent public deposit

Only the following external/historical items remain unresolved:

1. **Permanent archive URL and DOI.** These are assigned only after the public release is deposited/archived (for example, GitHub + Zenodo).
2. **Historical Git commit.** The preserved `git.txt` records `fatal: not a git repository`; no historical experiment SHA can be recovered from the supplied run metadata. The public release commit/tag must be reported separately and must not be described as the historical experiment commit.
3. **Historical thread environment variables.** No explicit OpenMP/std::thread parallel region was located in the supplied benchmark sources, but environment-level thread settings were not captured. Do not replace this with a stronger single-thread claim.
4. **Extended-eight-size DSCS individual timing rows.** The experiment comprises 12,800 observations (128 configurations x 100 queries), but the supplied `judge_coll.xlsx` preserves them only as 128 configuration-level mean/SE summaries. Do not reconstruct individual timing rows.
5. **Legacy eight-size MCCH-DCR individual timing rows.** The aggregate source workbook is preserved; the redesigned `legacy_end_to_end` raw data are a different, smaller grid and must not be substituted for the historical eight-size observations.
6. **Release license.** Select and add the authors' intended license before the first permanent public/DOI deposit; do not infer a license from the presence of source code or data.

**Resolved:** installed physical memory has been checked on the original workstation: 128 GB (8 x 16 GB; Windows reports 127.66 GiB total physical memory).
