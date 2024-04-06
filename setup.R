if (!requireNamespace('renv', quietly = TRUE)) {
  # install renv version 0.16.0 (released on 29/09/2022)
  install.packages('renv', repos = 'https://packagemanager.posit.co/cran/2022-09-30', prompt = FALSE)
  renv::init(bare = TRUE)
}

# Note: 2023-08-22 renv::restore() failed, so had to force install the following
if (!requireNamespace('DHARMa', quietly = TRUE)) {
  renv::install("DHARMa", repos = "https://packagemanager.posit.co/cran/2022-09-09", prompt = FALSE)
}
if (!requireNamespace('BayesianTools', quietly = TRUE)) {
  renv::install("BayesianTools", repos = "https://packagemanager.posit.co/cran/2023-08-21", prompt = FALSE)
}

renv::restore(prompt = FALSE)
