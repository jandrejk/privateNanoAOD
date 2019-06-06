# Setting up the environment
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