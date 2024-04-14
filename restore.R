renv::restore(prompt = FALSE)

# Check number of packages restored
nrow(installed.packages(lib.loc = .libPaths()[1]))

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

remove.packages(c('boot', 'class', 'cluster', 'codetools',
                  'foreign', 'KernSmooth',
                  'MASS', 'Matrix', 'mgcv',
                  'nlme', 'nnet', 'spatial', 'survival'), lib = .libPaths()[2])

# lattice is duplicated in .libPaths()[1] and .libPaths()[2]
remove.packages(c('lattice'), lib = .libPaths()[2])
