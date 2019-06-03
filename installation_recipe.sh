#Setup CMSSW area
scram project -n CMSSW_10_2_15 CMSSW CMSSW_10_2_15
cd CMSSW_10_2_15/src/
eval `scramv1 runtime -sh`
#add my CMSSW fork where needed changes of deepTauIDv2 are implemented
git clone https://github.com/jandrejk/cmssw.git PhysicsTools/NanoAOD -b from-CMSSW_10_2_15_deepTauID_2018
#Add DeepTau code from Tau POG repository (note "-u" option preventing checkout of unnecessary stuff)
git cms-merge-topic -u cms-tau-pog:CMSSW_10_2_X_tau-pog_DeepTau2017v2
#Add 2017v2 training file by using "git clone" or wget
# git clone -b DeepTau2017v2_alone https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles.git RecoTauTag/TrainingFiles/data
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_core.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_inner.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_outer.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
# Compile
scram b -j4

mv ../../run .
cd run
echo "setup completed"