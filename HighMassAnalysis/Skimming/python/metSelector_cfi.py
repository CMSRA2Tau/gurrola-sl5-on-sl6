import FWCore.ParameterSet.Config as cms

VBFMetFilter = cms.EDFilter("PATMETSelector",
  src = cms.InputTag("patPfMetT0pcT1Txy"),
  cut = cms.string("pt > 50.0"),
  filter = cms.bool(True)
)

