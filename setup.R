if (!requireNamespace('renv', quietly = TRUE)) {
  # install renv version 0.16.0 (released on 29/09/2022)
  install.packages('renv', repos = 'https://packagemanager.posit.co/cran/2022-09-30')
  renv::init(bare = TRUE)
}

# Note: 2023-08-22 renv::restore() failed, so had to force install the following
if (!requireNamespace('DHARMa', quietly = TRUE)) {
  renv::install("DHARMa", repos = "https://packagemanager.posit.co/cran/2022-09-09")
}
if (!requireNamespace('BayesianTools', quietly = TRUE)) {
  renv::install("BayesianTools", repos = "https://packagemanager.posit.co/cran/2023-08-21")
}

# Note: 2023-10-09 websocket 1.3.2, chromote 0.1.2, AsioHeaders 1.22.1-2, webshot2 0.1.1
if (!requireNamespace('websocket', quietly = TRUE)) {
  renv::install('websocket', repos = 'https://packagemanager.posit.co/cran/2021-04-22', type = 'source')
}
if (!requireNamespace('chromote', quietly = TRUE)) {
  renv::install('chromote', repos = 'https://packagemanager.posit.co/cran/2023-08-14')
}

renv::restore(prompt = FALSE)
