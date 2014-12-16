import FWCore.ParameterSet.Config as cms

from HighMassAnalysis.Skimming.tauSelector_cfi import *
from HighMassAnalysis.Skimming.muonSelector_cfi import *

singleMuSkimSequence = cms.Sequence(
  selectedMuons
)
