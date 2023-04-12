# install renv version 0.16.0 (released on 29/09/2022)
install.packages('renv', repos = 'https://packagemanager.posit.co/cran/2022-09-30')

renv::init(bare = TRUE)

renv::restore(prompt = FALSE)
