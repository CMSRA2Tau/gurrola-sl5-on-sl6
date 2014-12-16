import FWCore.ParameterSet.Config as cms

selectedElectrons = cms.EDFilter("GsfElectronSelector",
  src = cms.InputTag("gsfElectrons"),
  cut = cms.string("pt >= 30 & abs(eta) <= 2.5"),
  filter = cms.bool(True)
)
