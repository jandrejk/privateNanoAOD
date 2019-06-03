#!/bin/bash
echo for MC test sample use:
echo cmsDriver.py step1 --filein file:VBF_upgrade2018.root --fileout file:HIG-RunIIAutumn18MiniAOD-BA60B642.root --mc --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions 102X_upgrade2018_realistic_v12 --step NANO --nThreads 2 --era Run2_2018,run2_nanoAOD_102Xv1 --python_filename HIG-RunIIAutumn18MiniAOD_mc_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 100

echo for Data Prompt D test sample use:
echo cmsDriver.py step1 --filein file:SingleMuon_Run2018D.root --fileout file:HIG-Run2018D-B9AD01E7.root --data --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions 102X_dataRun2_Prompt_v11 --step NANO --nThreads 2 --era Run2_2018,run2_nanoAOD_102Xv1 --python_filename HIG-RunIIAutumn18MiniAOD_data_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 100

echo for Data Prompt ABC test sample use:
echo cmsDriver.py step1 --filein file:... --fileout file:HIG-Run2018D-B9AD01E7.root --data --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions 102X_dataRun2_Sep2018Rereco_v1 --step NANO --nThreads 2 --era Run2_2018,run2_nanoAOD_102Xv1 --python_filename HIG-Run2018ABC_data_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 100


#/store/mc/RunIIAutumn18MiniAOD/VBFHToTauTau_M125_13TeV_powheg_pythia8/MINIAODSIM/102X_upgrade2018_realistic_v15_ext1-v1/80000/BA60B642-B308-7D46-B12F-40CCF2BBB6E8.root 
#/store/data/Run2018D/SingleMuon/MINIAOD/PromptReco-v2/000/325/175/00000/B9AD01E7-19F7-6042-B614-8C64E39596D9.root 
