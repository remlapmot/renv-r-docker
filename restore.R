renv::restore(prompt = FALSE)

# Check number of packages restored
nrow(installed.packages(lib.loc = .libPaths()[1]))

# Due to packages which were installed then removed
# renv::remove('pak')
# renv::remove('webshot2')
# renv::remove('tzdb')
# renv::remove('DiagrammeR')
