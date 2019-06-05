#Setup CMSSW area
scram project -n CMSSW_10_2_15 CMSSW CMSSW_10_2_15
cd CMSSW_10_2_15/src/
eval `scramv1 runtime -sh`
#Add DeepTau code from Tau POG repository (note "-u" option preventing checkout of unnecessary stuff)
git cms-merge-topic -u cms-tau-pog:CMSSW_10_2_X_tau-pog_DeepTau2017v2
#Resolving merge conflicts
echo "Resolving merge conflicts"
cp ../../cmsswFiles/nano_cff.py -P PhysicsTools/NanoAOD/python
cp ../../cmsswFiles/taus_cff.py -P PhysicsTools/NanoAOD/python
#Add 2017v2 training file by using "git clone" or wget
# git clone -b DeepTau2017v2_alone https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles.git RecoTauTag/TrainingFiles/data
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_core.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_inner.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
wget https://github.com/cms-tau-pog/RecoTauTag-TrainingFiles/raw/DeepTau2017v2/DeepTauId/deepTau_2017v2p6_e6_outer.pb -P RecoTauTag/TrainingFiles/data/DeepTauId
# Compile
scram b -j4

cp -r ../../run .
cd run
echo "setup completed"