import FWCore.ParameterSet.Config as cms

from HighMassAnalysis.Skimming.tauSelector_cfi import *
from HighMassAnalysis.Skimming.elecSelector_cfi import *

elecSkimSequence = cms.Sequence(
  selectedElectrons
)
