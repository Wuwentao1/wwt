# Historical Git status

The redesigned experiment driver was written to capture the result of `git rev-parse HEAD` into the experiment output. The preserved environment record `metadata/environment/primary_git.txt` contains:

`fatal: not a git repository (or any of the parent directories): .git`

The recovered R command history places the experiment work under `C:/Users/DELL/Desktop/netdecom_c/`, including the nested `jmlr_redesigned_experiments` directory.

Accordingly, no historical commit SHA is recoverable from the preserved experiment metadata itself. A `.gitignore` file is present in the supplied materials, but this does not establish that the experiment directory was a Git repository at run time.

For publication, distinguish:
- Historical experiment commit: unavailable from preserved Git metadata.
- Reproducibility-release commit: the commit/tag of this public repository release.

Do not infer or fabricate a historical commit SHA from file dates.
