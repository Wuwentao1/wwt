source("config/config.R")
source("R/utils.R")
source("R/00_validation_tests.R")
source("R/01_verification_benchmark.R")
source("R/02_construction_benchmark.R")
source("R/03_legacy_end_to_end.R")
source("R/04_stress_cases.R")
source("R/05_summarize.R")
source("R/06_figures.R")
source("R/07_benchmark_networks.R")

cfg <- EXP_CONFIG
ensure_dir(cfg$out_dir)
capture_environment(cfg$out_dir)
compile_sources()
validate_new_kernels(cfg)

run_verification_benchmark(cfg, tag="main")
run_construction_benchmark(cfg, tag="main")
run_verification_benchmark(cfg, tag="density")
run_construction_benchmark(cfg, tag="density")
run_legacy_end_to_end(cfg)
run_stress_cases(cfg)
run_benchmark_networks(cfg)
summarize_all(cfg)
make_figures(cfg)

message("All redesigned experiments completed. Outputs are in: ",
        normalizePath(cfg$out_dir, winslash="/", mustWork=FALSE))
