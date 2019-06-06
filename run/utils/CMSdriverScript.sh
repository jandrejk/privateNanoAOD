#!/bin/bash
era_mod="Run2_2016,run2_nanoAOD_94X2016" # https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookNanoAOD

echo for MC sample use:
MC_sample="/store/mc/RunIISummer16MiniAODv3/VBFHToTauTau_M125_13TeV_powheg_pythia8/MINIAODSIM/PUMoriond17_94X_mcRun2_asymptotic_v3-v2/40000/02F70F72-9F2C-E911-BE1E-141877411FCD.root"
MC_GT="102X_mcRun2_asymptotic_v6" # see https://twiki.cern.ch/twiki/bin/viewauth/CMS/PdmVAnalysisSummaryTable status 2019-04-08
echo "cmsDriver.py step1 --filein root://cms-xrd-global.cern.ch/${MC_sample} --fileout file:HIG-RunIISummer16_nanoAOD.root --mc --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions ${MC_GT} --step NANO --nThreads 1 --era ${era_mod} --python_filename HIG-RunIISummer16MiniAODv3_mc_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 10 --customise_commands=\"process.add_(cms.Service('InitRootHandlers', EnableIMT = cms.untracked.bool(False)))\""

echo for Data sample use: 
DATA_sample="/store/data/Run2016B/SingleMuon/MINIAOD/17Jul2018_ver1-v1/20000/F846D019-069B-E811-A03B-0242AC1C0502.root"
DATA_GT=102X_dataRun2_nanoAOD_2016_v1
echo "cmsDriver.py step1 --filein root://cms-xrd-global.cern.ch/${DATA_sample} --fileout file:HIG-Run2016_nanoAOD.root --data --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions ${DATA_GT} --step NANO --nThreads 1 --era ${era_mod} --python_filename HIG-RunIISummer16MiniAODv3_data_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 10 --customise_commands=\"process.add_(cms.Service('InitRootHandlers', EnableIMT = cms.untracked.bool(False)))\""