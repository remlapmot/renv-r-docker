Sys.setenv(RENV_CONFIG_MRAN_ENABLED = FALSE)
renv::restore(prompt = FALSE, exclude = 'dd4d')
install.packages('dd4d', repos = c('https://opensafely-core.r-universe.dev', 'https://cloud.r-project.org'))

# Due to packages which were installed then removed
# renv::remove('pak')
# renv::remove('webshot2')
# renv::remove('tzdb')
# renv::remove('DiagrammeR')
# renv::remove('AsioHeaders')
# renv::remove('bslib')
# renv::remove('brio')
# renv::remove('cachem')
# renv::remove('chromote')
# renv::remove('diffobj')
# renv::remove('memoise')
# renv::remove('jquerylib')
# renv::remove('fontawesome')
# renv::remove('visNetwork')
# renv::remove('vroom')
# renv::remove('waldo')
# renv::remove('websocket')
# renv::remove('rematch2')
# renv::remove('downloader')

# Remove core packages which are at different versions in lockfile
remove.packages(c('boot', 'class', 'cluster', 'codetools',
                  'foreign', 'KernSmooth',
                  'MASS', 'Matrix', 'mgcv',
                  'nlme', 'nnet', 'spatial', 'survival'), lib = .libPaths()[2])

# lattice is duplicated in .libPaths()[1] and .libPaths()[2]
remove.packages(c('lattice'), lib = .libPaths()[2])

# Count number of packages - should match count in r image
nrow(installed.packages())
