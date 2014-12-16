import FWCore.ParameterSet.Config as cms

process = cms.Process("Demo")

process.load("FWCore.MessageService.MessageLogger_cfi")

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )

process.source = cms.Source("PoolSource",
    fileNames = cms.untracked.vstring(
'file:skimPat.root'
    )
)

process.donothing = cms.EDFilter("DoNothing")

# Output Module Configuration (expects a path 'p')
process.out = cms.OutputModule("PoolOutputModule",
    fileName = cms.untracked.string('skimPat.root'),
    SelectEvents   = cms.untracked.PSet( SelectEvents = cms.vstring('p') ),
    outputCommands = cms.untracked.vstring('keep *_*_*_*'),
    fastCloning = cms.untracked.bool(False)
)
process.outpath = cms.EndPath(process.out)

process.p = cms.Path(process.donothing)

