#!/bin/bash
era_mod="Run2_2017,run2_nanoAOD_94XMiniAODv2" # https://twiki.cern.ch/twiki/bin/view/CMSPublic/WorkBookNanoAOD

echo for MC sample use:
MC_sample="/store/mc/RunIIFall17MiniAODv2/VBFHToTauTau_M125_13TeV_powheg_pythia8/MINIAODSIM/PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/00000/2EE992B1-F942-E811-8F11-0CC47A4C8E8A.root"
MC_GT="102X_mc2017_realistic_v6" # see https://twiki.cern.ch/twiki/bin/viewauth/CMS/PdmVAnalysisSummaryTable status 2019-04-08
echo cmsDriver.py step1 --filein root://cms-xrd-global.cern.ch/${MC_sample} --fileout file:HIG-RunIIFall17_nanoAOD.root --mc --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions ${MC_GT} --step NANO --nThreads 1 --era ${era_mod} --python_filename HIG-RunIIFall17MiniAODv2_mc_cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 100 --customise_commands="process.add_(cms.Service('InitRootHandlers', EnableIMT = cms.untracked.bool(False)))"

echo for Data sample use: not done yet!