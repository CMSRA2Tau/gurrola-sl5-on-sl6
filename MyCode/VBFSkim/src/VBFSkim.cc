// -*- C++ -*-
//
// Package:    VBFSkim
// Class:      VBFSkim
// 
/**\class VBFSkim VBFSkim.cc MyCode/VBFSkim/src/VBFSkim.cc

 Description: [one line class summary]

 Implementation:
     [Notes on implementation]
*/
//
// Original Author:  Alfredo Gurrola
//         Created:  Fri May 30 09:37:36 CDT 2014
// $Id$
//
//


// system include files
#include <memory>

// user include files
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/EDFilter.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "DataFormats/RecoCandidate/interface/IsoDepositDirection.h"
#include "DataFormats/RecoCandidate/interface/IsoDeposit.h"
#include "DataFormats/RecoCandidate/interface/IsoDepositVetos.h"
#include "DataFormats/PatCandidates/interface/Tau.h"
#include "DataFormats/PatCandidates/interface/Muon.h"
#include "DataFormats/PatCandidates/interface/Electron.h"
#include "DataFormats/PatCandidates/interface/Jet.h"
#include "DataFormats/PatCandidates/interface/MET.h"
#include "DataFormats/PatCandidates/interface/CompositeCandidate.h"
#include "DataFormats/Math/interface/LorentzVector.h"
#include "DataFormats/Math/interface/LorentzVectorFwd.h"
#include "DataFormats/JetReco/interface/GenJetCollection.h"
#include "DataFormats/JetReco/interface/GenJet.h"
#include "DataFormats/PatCandidates/interface/Isolation.h"
#include "EgammaAnalysis/ElectronTools/interface/ElectronEffectiveArea.h"
#include "DataFormats/Math/interface/deltaR.h"
#include "DataFormats/Math/interface/normalizedPhi.h"
#include "DataFormats/TauReco/interface/PFTau.h"
#include "DataFormats/TauReco/interface/PFTauDiscriminator.h"
#include "DataFormats/MuonReco/interface/MuonSelectors.h"
#include "DataFormats/Common/interface/RefVector.h"
#include "DataFormats/HepMCCandidate/interface/GenParticle.h"
#include "DataFormats/Candidate/interface/Candidate.h"
#include "DataFormats/Common/interface/Ref.h"
#include "DataFormats/Common/interface/ValueMap.h"
#include "DataFormats/VertexReco/interface/Vertex.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"
#include "FWCore/Common/interface/TriggerNames.h"
#include "DataFormats/Common/interface/TriggerResults.h"
#include "CLHEP/Random/RandGauss.h"
#include "CommonTools/CandUtils/interface/Booster.h"
#include "DataFormats/METReco/interface/GenMET.h"
#include "DataFormats/METReco/interface/GenMETCollection.h"
#include <Math/VectorUtil.h>
#include "DataFormats/HLTReco/interface/TriggerObject.h"
#include "DataFormats/HLTReco/interface/TriggerEvent.h"
#include "DataFormats/Common/interface/Handle.h"
#include "TrackingTools/TransientTrack/interface/TrackTransientTrack.h"
#include "TrackingTools/TransientTrack/interface/TransientTrackBuilder.h"
#include "TrackingTools/Records/interface/TransientTrackRecord.h"
#include "CLHEP/Units/GlobalPhysicalConstants.h"
#include "CommonTools/Statistics/interface/ChiSquaredProbability.h"
#include "CondFormats/JetMETObjects/interface/FactorizedJetCorrector.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectionUncertainty.h"
#include "JetMETCorrections/Objects/interface/JetCorrectionsRecord.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectorParameters.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidate.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidateFwd.h"
#include "DataFormats/Common/interface/ValueMap.h"
#include "CommonTools/ParticleFlow/test/PFIsoReaderDemo.h"
#include "FWCore/Utilities/interface/Exception.h"
#include "FWCore/Framework/interface/ESHandle.h"
#include "CommonTools/UtilAlgos/interface/TFileService.h"
#include "boost/regex.hpp"
#include "SimDataFormats/PileupSummaryInfo/interface/PileupSummaryInfo.h"
#include "DataFormats/MuonReco/interface/MuonCocktails.h"
#include "CommonTools/Utils/interface/TFileDirectory.h"
#include <TH1.h>
#include <TH2.h>
#include <TFile.h>
#include <TTree.h>
#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include <TRandom3.h>

using namespace std;
using namespace edm;

typedef reco::Candidate::LorentzVector LorentzVector;

//
// class declaration
//

class VBFSkim : public edm::EDFilter {
   public:
      explicit VBFSkim(const edm::ParameterSet&);
      ~VBFSkim();

      static void fillDescriptions(edm::ConfigurationDescriptions& descriptions);

   private:
      virtual void beginJob() ;
      virtual bool filter(edm::Event&, const edm::EventSetup&);
      virtual void endJob() ;
      
      virtual bool beginRun(edm::Run&, edm::EventSetup const&);
      virtual bool endRun(edm::Run&, edm::EventSetup const&);
      virtual bool beginLuminosityBlock(edm::LuminosityBlock&, edm::EventSetup const&);
      virtual bool endLuminosityBlock(edm::LuminosityBlock&, edm::EventSetup const&);

      // ----------member data ---------------------------
};

//
// constants, enums and typedefs
//

//
// static data member definitions
//

//
// constructors and destructor
//
VBFSkim::VBFSkim(const edm::ParameterSet& iConfig)
{
   //now do what ever initialization is needed

}


VBFSkim::~VBFSkim()
{
 
   // do anything here that needs to be done at desctruction time
   // (e.g. close files, deallocate resources etc.)

}


//
// member functions
//

// ------------ method called on each new Event  ------------
bool
VBFSkim::filter(edm::Event& iEvent, const edm::EventSetup& iSetup)
{
   using namespace edm;
#ifdef THIS_IS_AN_EVENT_EXAMPLE
   Handle<ExampleData> pIn;
   iEvent.getByLabel("example",pIn);
#endif

#ifdef THIS_IS_AN_EVENTSETUP_EXAMPLE
   ESHandle<SetupData> pSetup;
   iSetup.get<SetupRecord>().get(pSetup);
#endif

  Handle< pat::JetCollection > _patJets;
  iEvent.getByLabel("selectedVBFJets", _patJets);

  int nGoodDiJetCombinations = 0;
  for ( pat::JetCollection::const_iterator patJet1 = _patJets->begin();patJet1 != _patJets->end(); ++patJet1 ) {
    for ( pat::JetCollection::const_iterator patJet2 = _patJets->begin();patJet2 != _patJets->end(); ++patJet2 ) {
      reco::Candidate::LorentzVector The_LorentzVect = patJet1->p4() + patJet2->p4();
      if( (fabs(patJet1->eta() - patJet2->eta()) > 3.5) && ((patJet1->eta() * patJet2->eta()) < 0) && (The_LorentzVect.M() > 650.0) ) {
        nGoodDiJetCombinations++;
      }
    }
  }

  if(nGoodDiJetCombinations > 0) {return true;}
  else {return false;}
}

// ------------ method called once each job just before starting event loop  ------------
void 
VBFSkim::beginJob()
{
}

// ------------ method called once each job just after ending the event loop  ------------
void 
VBFSkim::endJob() {
}

// ------------ method called when starting to processes a run  ------------
bool 
VBFSkim::beginRun(edm::Run&, edm::EventSetup const&)
{ 
  return true;
}

// ------------ method called when ending the processing of a run  ------------
bool 
VBFSkim::endRun(edm::Run&, edm::EventSetup const&)
{
  return true;
}

// ------------ method called when starting to processes a luminosity block  ------------
bool 
VBFSkim::beginLuminosityBlock(edm::LuminosityBlock&, edm::EventSetup const&)
{
  return true;
}

// ------------ method called when ending the processing of a luminosity block  ------------
bool 
VBFSkim::endLuminosityBlock(edm::LuminosityBlock&, edm::EventSetup const&)
{
  return true;
}

// ------------ method fills 'descriptions' with the allowed parameters for the module  ------------
void
VBFSkim::fillDescriptions(edm::ConfigurationDescriptions& descriptions) {
  //The following says we do not know what parameters are allowed so do no validation
  // Please change this to state exactly what you do use, even if it is no parameters
  edm::ParameterSetDescription desc;
  desc.setUnknown();
  descriptions.addDefault(desc);
}
//define this as a plug-in
DEFINE_FWK_MODULE(VBFSkim);
