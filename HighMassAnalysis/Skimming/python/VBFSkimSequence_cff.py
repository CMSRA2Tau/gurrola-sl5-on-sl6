import FWCore.ParameterSet.Config as cms

from HighMassAnalysis.Skimming.tauSelector_cfi import *
from HighMassAnalysis.Skimming.muonSelector_cfi import *
from HighMassAnalysis.Skimming.elecSelector_cfi import *
from HighMassAnalysis.Skimming.jetSelector_cfi import *
from HighMassAnalysis.Skimming.metSelector_cfi import *

diJetPairs = cms.EDProducer("CandViewShallowCloneCombiner",
#  decay = cms.string('selectedVBFJets@+ selectedVBFJets@-'),
  decay = cms.string('selectedVBFJets selectedVBFJets'),
  checkCharge = cms.bool(False),
#  cut = cms.string('abs( deltaPhi( daughter(0).phi, daughter(1).phi ) ) > 3.0 & mass > 700.0'),
  cut = cms.string('abs(daughter(0).eta - daughter(1).eta) > 3.0 & mass > 700.0'),
  name = cms.string('diJetCandidates'),
)

selectedDiJetPairs = cms.EDFilter("CandViewCountFilter",
  src = cms.InputTag('diJetPairs'),
  minNumber = cms.uint32(1)
)

vbfSkimSequence = cms.Sequence(
  selectedVBFJets
  * diJetPairs
  * selectedDiJetPairs
  * VBFMetFilter
)
