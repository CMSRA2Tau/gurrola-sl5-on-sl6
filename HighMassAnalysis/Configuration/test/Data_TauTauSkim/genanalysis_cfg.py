import FWCore.ParameterSet.Config as cms

process = cms.Process("Demo")

process.load("FWCore.MessageService.MessageLogger_cfi")

process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(100) )

process.source = cms.Source("PoolSource",
    # replace 'myfile.root' with the source file you want to use
    fileNames = cms.untracked.vstring(
#        'file:WRToNuLeptonToLLJJ_M_2700_M_1350_TuneZ2_8TeV_pythia6_cff_py_GEN_allon.root'
#        'file:WRToNuLeptonToLLJJ_M_2700_M_1350_TuneZ2_8TeV_pythia6_cff_py_GEN.root'
#        'file:WRToNuLeptonToLLJJ_M_2700_M_1350_TuneZ2_8TeV_pythia6_cff_py_GEN_alloff.root'
#        'file:WRToNuLeptonToLLJJ_M_2700_M_1350_TuneZ2_8TeV_pythia6_tauola_cff_py_GEN_alloff_tauola.root'
#        'file:WRToNuTauToTauTau_M_2700_M_1350_TuneZ2star_8TeV_pythia6_cff_py_GEN.root'
#        'file:lqd333_TuneZ2star_8TeV_pythia6_cff_py_GEN.root'
#        'file:lqd333_TuneZ2star_8TeV_pythia6_tauola_cff_py_GEN.root'
#        'file:rpvstop_step0.root'
#'/store/mc/Summer12_DR53X/DYJetsToLL_M-50_TuneZ2Star_8TeV-madgraph-tarball/AODSIM/PU_S10_START53_V7A-v1/0000/00037C53-AAD1-E111-B1BE-003048D45F38.root'
'file:skimPat.root'
    )
)

process.load("SimGeneral.HepPDTESSource.pythiapdt_cfi")
process.printTree = cms.EDAnalyzer("ParticleListDrawer",
  maxEventsToPrint = cms.untracked.int32(1),
  printVertex = cms.untracked.bool(False),
  src = cms.InputTag("genParticles")
)

process.load("SimGeneral.HepPDTESSource.pythiapdt_cfi")
process.drawTree = cms.EDAnalyzer("ParticleTreeDrawer",
                                   src = cms.InputTag("genParticles"),                                                                 
                                   printP4 = cms.untracked.bool(False),
                                   printPtEtaPhi = cms.untracked.bool(False),
                                   printVertex = cms.untracked.bool(False),
                                   printStatus = cms.untracked.bool(False),
                                   printIndex = cms.untracked.bool(False),
                                   status = cms.untracked.vint32( 3 )
)

process.printDecay = cms.EDAnalyzer("ParticleDecayDrawer",
    src = cms.InputTag("genParticles"),
    printP4 = cms.untracked.bool(False),
    printPtEtaPhi = cms.untracked.bool(False),
    printVertex = cms.untracked.bool(False)
)

process.demo = cms.EDAnalyzer('GenAnalysis')

process.npartfilter = cms.EDFilter("NPartonFilter")

## Output Module Configuration (expects a path 'p')
#process.out = cms.OutputModule("PoolOutputModule",
#    fileName = cms.untracked.string('skimPat2.root'),
#    SelectEvents   = cms.untracked.PSet( SelectEvents = cms.vstring('p') ),
#    outputCommands = cms.untracked.vstring('keep *_*_*_*'),
#    fastCloning = cms.untracked.bool(False)
#)
#process.outpath = cms.EndPath(process.out)

#process.p = cms.Path(process.demo * process.printTree)
process.p = cms.Path(process.printDecay * process.drawTree * process.printTree)
#process.p = cms.Path(process.printDecay)
#process.p = cms.Path(process.npartfilter + process.printDecay)
#process.p = cms.Path(process.npartfilter)

