cran <- c("Rcpp","igraph","bnlearn","digest","ggplot2","BiocManager","renv")
missing <- cran[!vapply(cran, requireNamespace, logical(1), quietly=TRUE)]
if(length(missing)) install.packages(missing, repos="https://cloud.r-project.org")
bioc <- c("pcalg","graph")
missing_bioc <- bioc[!vapply(bioc, requireNamespace, logical(1), quietly=TRUE)]
if(length(missing_bioc)) BiocManager::install(missing_bioc, ask=FALSE, update=FALSE)
cat("Dependencies installed. Run renv::init(bare=TRUE); renv::snapshot() after verifying the environment.\n")
