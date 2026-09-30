# ============================================================
# Configuration for E1 and E2
# ============================================================

MASTER_SEED <- 20260929L
BOOT_SEED   <- 20260930L
N_BOOT      <- 2000L

# High-resolution C++ kernel timing.
KERNEL_WARMUP       <- 2L
KERNEL_MIN_TOTAL_NS <- 5e6
KERNEL_MAX_REPEATS  <- 100L

# -------------------------
# E1: MCCH vs global protected c-simplicial deletion
# -------------------------
E1_N <- c(500L, 1000L, 2000L, 4000L, 8000L, 10000L)
E1_D <- c(2L, 4L, 6L, 8L)
E1_R <- c(10L, 20L, 50L, 100L)
E1_GRAPHS_PER_ND <- 20L
E1_TARGETS_PER_SIZE <- 5L
E1_MEASURE_PEAK_RAM <- TRUE
E1_MEMORY_QUERY_INDEX <- 1L
E1_RESUME <- TRUE

# -------------------------
# E2: closure + fitting + inference
# -------------------------
E2_GAUSS_N <- c(50L, 100L, 250L)
E2_GAUSS_D <- c(2L, 4L)
E2_GAUSS_R <- c(2L, 5L, 10L)
E2_GAUSS_SAMPLE_N <- c(250L, 1000L, 5000L)
E2_GAUSS_GRAPHS_PER_ND <- 20L
E2_GAUSS_TARGETS_PER_SIZE <- 5L
E2_GAUSS_MAX_INDEGREE <- 4L

E2_DISC_N <- c(15L, 30L, 50L)
E2_DISC_D <- c(2L, 4L)
E2_DISC_R <- c(2L, 4L, 6L)
E2_DISC_SAMPLE_N <- c(5000L, 20000L, 100000L)
E2_DISC_LEVELS <- c(2L, 3L)
E2_DISC_GRAPHS_PER_ND <- 20L
E2_DISC_TARGETS_PER_SIZE <- 5L
E2_DISC_MAX_INDEGREE <- 2L

R_TIMING_MIN_SEC <- 0.01
R_TIMING_MAX_REPEATS <- 2048L
VE_MAX_CELLS <- 5e7
GAUSS_TOL_MEAN <- 1e-8
GAUSS_TOL_COV  <- 1e-8
DISC_TOL_MAX   <- 1e-10
E2_REPEAT_Q <- c(1L, 5L, 10L, 15L)
E2_MEASURE_PEAK_RAM <- TRUE
E2_MEMORY_EVERY <- 5L
E2_RESUME <- TRUE

DIR_E1 <- file.path("output", "e1")
DIR_E2 <- file.path("output", "e2")
dir.create(DIR_E1, recursive = TRUE, showWarnings = FALSE)
dir.create(DIR_E2, recursive = TRUE, showWarnings = FALSE)
