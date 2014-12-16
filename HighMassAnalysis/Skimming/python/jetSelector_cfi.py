import FWCore.ParameterSet.Config as cms

selectedVBFJets = cms.EDFilter("PATJetSelector",
    src = cms.InputTag("selectedPatJets"),
    cut = cms.string('pt > 50 & abs(eta) < 5.0'),
    filter = cms.bool(True)
)
