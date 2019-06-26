# Setting up the environment and submit jobs
step 1: clone this repository:

`git clone https://github.com/jandrejk/privateNanoAOD.git -b 2016`

`cd privateNanoAOD`

step 2: execute the installation recipe:

`sh installation_recipe.sh`

step 3: submit on CRAB:

`cd CMSSW_10_2_15/src/`

`cmsenv; source /cvmfs/cms.cern.ch/crab3/crab.sh; voms-proxy-init --voms cms`

`cd run`

`python run_production.py`

The submit commands are printed in the terminal.

# Resubmitting jobs
use `python CRAB_job_manager.py --resub -rundir crab_ReRunNano2016_{datestamp}/`

where datestamp needs to be replaced with the apropriate date stamp.

With the `--dry` option just a print out of the resubmit commands is printed:

`python CRAB_job_manager.py --resub -rundir crab_ReRunNano2016_{datestamp}/ --dry`

Other optional arguments are available such as siteblacklist, maxjobruntime, maxmemory.