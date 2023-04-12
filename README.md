# r-docker-renv
 
This repo recreates the r-docker environment on your local installation of R.

Only the package versions and version of R will be the same. The operating system and architecture may be different, hence you may see some very small differences in results.

## Setup

* Install R 4.0.5 using the relevant installer or use `rig`
  * Installer
    * Windows <https://cran.r-project.org/bin/windows/base/old/4.0.5/R-4.0.5-win.exe>
    * macOS
      * Intel processor <https://cran.r-project.org/bin/macosx/base/R-4.0.5.pkg>
      * Apple processor - I don't think R 4.0.5 was released for Apple Silicon, so run the Intel version above (it will automatically run under rosetta2)
     * rig <https://github.com/r-lib/rig#readme>
       ```
       brew tap r-lib/rig
       brew install --cask rig
       ```
     * (Only works on Intel Macs) Install R 4.0.5
       ```
       rig add 4.0.5
       ```

     * Launch the Rig.app menu bar app which will now be in your Applications directory
     * On Apple Silicon Macs run
       ```
       rig system make-orthogonal
       ```
     * Use that to launch RStudio under R 4.0.5
     * Open this project

* Relaunch RStudio running R 4.0.5 
  * On Windows hold Ctrl when clicking the RStudio icon to obtain the R version selection

* Run 
  ```r
  renv::restore(prompt = FALSE)
  ```
  
