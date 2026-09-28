# Reconstructed primary experiment driver

This directory reconstructs the path layout expected by the supplied `run_all.R`.
Run from this directory with `Rscript run_all.R` after installing the dependencies.

The C++ files intentionally remain in the project root because the supplied
`R/utils.R::compile_sources()` looks for them there. The R drivers are under `R/`
and the frozen design is in `config/config.R`.

The archived paper run used master seed `20260912` and bootstrap seed `20260913`.
For the shared-sparse kernels the configured timing protocol used 2 warm-up calls,
an adaptive minimum aggregate in-kernel time of 5,000,000 ns, and at most 100 repeats.

The historical Git commit was **not captured**. For the public release, cite the
release commit/tag and frozen archive SHA-256 rather than inventing a historical commit.
