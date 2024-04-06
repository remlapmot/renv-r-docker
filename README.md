# r-docker-renv: recreating the r-docker environment (essentially on Windows but in theory on Intel Macs and x86_64 Linux as well)

This repo recreates the r-docker environment on your local installation of R.

Only the package versions and version of R will be the same. The operating system and architecture may be different, hence you may see some very small differences in results.

## Setup on Windows

* Install R 4.0.5 for Windows, installer [here](https://cran.r-project.org/bin/windows/base/old/4.0.5/R-4.0.5-win.exe)
* Install [Rtools 4.0](https://cran.r-project.org/bin/windows/Rtools/rtools40.html) from [here](https://cran.r-project.org/bin/windows/Rtools/rtools40.html)
* Open RStudio using R 4.0.5 by holding Ctrl when you clicking the RStudio icon. This will show the RStudio R version selection window  
  <p align="center"><img src="img/rstudio-windows-control-click-open.png" width=40%></p>
* Open this project in that RStudio running R 4.0.5, by clicking File | Open Project...
* Run *setup.R* (technically we should just be able to run `renv::restore(prompt = FALSE)` but some hackery is needed for a few packages first)

  ```r
  source('setup.R')
  ```

* Here's proof that this ran successfully on Windows
  <p align="center"><img src="img/windows-proof.png" width=100%></p>
* A warning you can ignore: After successfully running the restore if you run `renv::status()` it will report the following.

  ``` r
  renv::status()
  #> The following package(s) do not appear to be used in this project:
  #>                       _
  #> BH                      [1.72.0-3]
  #>... (I deleted alot of output here) 
  #> zoo                     [1.8-8]
  #> 
  #> Use `renv::snapshot()` to remove them from the lockfile.
  ```

  You can ignore the advice to remove the packages because all this means is that there is no *.R*/*.Rmd*/*.qmd* script/s in the project that uses the all of the packages.
* To do some work in an OS project, change the working directory to that of your OS project using `setwd()`, and use RStudio's menus, e.g., *File | Open File...*, to open/create/modify/save R scripts as usual.

## Setup on macOS (Intel processor only)

* macOS users should install Xcode developer tools by issuing in the Terminal

  ```bash
  xcode-select --install
  ```

* A Fortran compiler is required to be installed in the location R is expecting (note that the version from Homebrew will not work).
  * R 4.0.5 was released on 31/3/2021 so my guess is try installing the dmg file from either (depending on which macOS version your Intel Mac has: Catalina or Big Sur or older??)
  * Catalina: try [this](https://github.com/fxcoudert/gfortran-for-macOS/releases/download/10.2/gfortran-10.2-Catalina.dmg)
  * Big Sur: try [this](https://github.com/fxcoudert/gfortran-for-macOS/releases/download/10.2-bigsur-intel/gfortran-10.2-BigSur-Intel.dmg)
  * Or for even older macOS versions: try [this](https://github.com/fxcoudert/gfortran-for-macOS/releases/download/8.2/gfortran-8.2-Mojave.dmg)
* Install R 4.0.5 using the relevant installer or use `rig`
* R installer for macOS
  * Intel processor, [here](https://cran.r-project.org/bin/macosx/base/R-4.0.5.pkg)
  * Apple processor - I don't think R 4.0.5 was released for Apple Silicon, so run the Intel version above (it will automatically run under rosetta2)
* rig <https://github.com/r-lib/rig#readme>, first install [Homebrew](https://brew.sh/), then install `rig`

  ```bash
  brew tap r-lib/rig
  brew install --cask rig
  ```

  * (Only works on Windows and Intel Macs) Install R 4.0.5

    ```bash
    rig add 4.0.5
    ```

* On macOS launch the *Rig.app* menu bar app which will now be in your Applications directory
* On Apple Silicon Macs run

  ```bash
  rig system make-orthogonal
  ```

* Use the *Rig.app* menu bar app to launch RStudio under R 4.0.5 as follows

  <p align="center"><img src="img/rig-example.png" width=50%></p>
* Open this project, e.g., by double-clicking the *renv-r-docker.Rproj* file
* Run *setup.R* (again we should just be able to run `renv::restore(prompt = FALSE)` but some hackery is required for a few packages)

  ```r
  source('setup.R')
  ```

## Updating the environment when r-docker is updated

* Update the *renv.lock* file by running in a Bash shell

  ```sh
  ./fetch.sh
  ```

* Then run

  ```r
  renv::restore(prompt = FALSE)
  ```
