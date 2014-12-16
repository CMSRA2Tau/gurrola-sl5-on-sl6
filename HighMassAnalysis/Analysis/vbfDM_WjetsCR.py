
import FWCore.ParameterSet.Config as cms
import copy

process = cms.Process('HiMassTau')

process.load('Configuration.StandardSequences.Services_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')
process.GlobalTag.globaltag = 'START53_V7F::All'
process.load('JetMETCorrections.Configuration.JetCorrectionServices_cff')
process.load('CommonTools/RecoAlgos/HBHENoiseFilter_cfi')
process.load('FWCore.MessageService.MessageLogger_cfi')
process.MessageLogger.cerr.FwkReport.reportEvery = 100

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(1000)
)
process.source = cms.Source("PoolSource",
    skipEvents = cms.untracked.uint32(0),
    fileNames = cms.untracked.vstring(
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_100_1_3Qn.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_10_1_0eb.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_11_1_lLs.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_12_1_riA.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_13_1_j33.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_14_1_Anh.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_15_1_mvy.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_16_1_77E.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_17_1_uqy.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_18_1_PQk.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_19_1_YxR.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_1_1_CTk.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_20_1_JBf.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_21_1_BQ2.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_22_1_lTv.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_23_1_TYz.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_24_1_1qb.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_25_1_Czr.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_26_1_KvS.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_27_1_KPG.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_28_1_gn4.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_29_1_CNu.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_2_1_hmJ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_30_1_taB.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_31_1_taN.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_32_1_tcE.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_33_1_AvH.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_34_1_Swe.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_35_1_TOq.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_36_1_axc.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_37_1_9NV.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_38_1_X0I.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_39_1_0ns.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_3_1_7Dg.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_40_1_Ae6.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_41_1_ToK.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_42_1_eIk.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_43_1_grd.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_44_1_exw.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_45_1_Rz8.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_46_1_DGy.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_47_1_2At.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_48_1_wQd.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_49_1_s6b.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_4_1_OkR.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_50_1_WdK.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_51_1_c7z.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_52_1_VTr.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_53_1_Hq5.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_54_1_6rX.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_55_1_RL4.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_56_1_Sba.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_57_1_fQ5.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_58_1_wSU.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_59_1_Elc.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_5_1_TuQ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_60_1_B1K.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_61_1_zPF.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_62_1_7bc.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_63_1_EkQ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_64_1_W7m.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_65_1_1Tg.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_66_1_sAl.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_67_1_HR2.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_68_1_2Ee.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_69_1_UTw.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_6_1_uXE.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_70_1_hmK.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_71_1_UsP.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_72_1_3QW.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_73_1_t8v.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_74_1_QId.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_75_1_qMr.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_76_1_XdC.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_77_1_Kg2.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_78_1_n45.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_79_1_hlU.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_7_1_cyS.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_80_1_YfD.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_81_1_c4R.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_82_1_uxV.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_83_1_HIa.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_84_1_1Jo.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_85_1_k1y.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_86_1_qPZ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_87_1_ncC.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_88_1_fSZ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_89_1_Ilx.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_8_1_dLM.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_90_1_xkb.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_91_1_tWy.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_92_1_kIz.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_93_1_z3V.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_94_1_8A7.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_95_1_hXJ.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_96_1_fXo.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_97_1_PVg.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_98_1_MK8.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_99_1_osm.root',
'file:/uscms/home/aman30/nobackup/Signal_Files/skimPat_9_1_HaQ.root'
)
)


process.TFileService = cms.Service("TFileService", 
    fileName = cms.string("analysis.root")
)

process.analyzeHiMassTau = cms.EDAnalyzer('HiMassTauAnalysis')

process.analyzeHiMassTau.DoMSUGRApoint = cms.bool(False)
process.analyzeHiMassTau.Prefix    = cms.string('susyScan')
process.analyzeHiMassTau.Suffix    = cms.string('')
process.analyzeHiMassTau.ScanFormat = cms.string(r"# model msugra_(\\d*)_(\\d*)_(m?\\d*)_(m?\\d*)_(m?\\d)\\s")
process.analyzeHiMassTau.ScanParameters = cms.vstring('M0', 'M12', 'tanbeta', 'A0', 'Mu')

process.analyzeHiMassTau.DoSMpoint = cms.bool(False)
process.analyzeHiMassTau.mLSP = cms.double(425.)
process.analyzeHiMassTau.mGL = cms.double(1150.)

    #----- Fill histos?
process.analyzeHiMassTau.FillRecoVertexHists = cms.bool(True)
process.analyzeHiMassTau.FillGenTauHists = cms.bool(True)
process.analyzeHiMassTau.FillRecoTauHists = cms.bool(True)
process.analyzeHiMassTau.FillRecoMuonHists = cms.bool(True)
process.analyzeHiMassTau.FillRecoElectronHists = cms.bool(True)
process.analyzeHiMassTau.FillRecoJetHists = cms.bool(True)
process.analyzeHiMassTau.FillTopologyHists = cms.bool(True)

    #-----Generator level Inputs
process.analyzeHiMassTau.GenParticleSource = cms.untracked.InputTag('genParticles')
process.analyzeHiMassTau.GenTauPtMinCut = cms.double(0.)
process.analyzeHiMassTau.GenTauPtMaxCut = cms.double(9999.)
process.analyzeHiMassTau.GenTauEtaMaxCut = cms.double(999.)
process.analyzeHiMassTau.SelectSusyScanPoint = cms.bool(False)
process.analyzeHiMassTau.M0 = cms.double(400.)
process.analyzeHiMassTau.M12 = cms.double(360.)

    #-----Reco Tau Inputs
process.analyzeHiMassTau.RecoTauSource = cms.InputTag('patTaus')
process.analyzeHiMassTau.RecoTau1EtaCut = cms.double(2.5)
process.analyzeHiMassTau.RecoTau1PtMinCut = cms.double(15.)					
process.analyzeHiMassTau.RecoTau1PtMaxCut = cms.double(9999.)					
process.analyzeHiMassTau.DoRecoTau1DiscrByLeadTrack = cms.bool(False) 				
process.analyzeHiMassTau.UseRecoTau1DiscrByLeadTrackFlag = cms.bool(True) 			
process.analyzeHiMassTau.RecoTau1DiscrByLeadTrack = cms.untracked.string('leadingPionPtCut')	
process.analyzeHiMassTau.DoRecoTau1DiscrByLeadTrackNhits = cms.bool(False)			
process.analyzeHiMassTau.RecoTau1LeadTrackMinHits = cms.int32(12)				
process.analyzeHiMassTau.DoRecoTau1DiscrByH3x3OverP = cms.bool(False)				
process.analyzeHiMassTau.RecoTau1H3x3OverP = cms.double(0.03)					
process.analyzeHiMassTau.DoRecoTau1DiscrByIsolation = cms.bool(True) 				
process.analyzeHiMassTau.UseRecoTau1DiscrByIsolationFlag = cms.bool(True) 			
process.analyzeHiMassTau.RecoTau1DiscrByMinIsolation = cms.untracked.string('ZERO')	
process.analyzeHiMassTau.RecoTau1DiscrByMaxIsolation = cms.untracked.string('byVLooseIsolationMVA3newDMwLT')	
process.analyzeHiMassTau.UseRecoTau1IsoSumPtInsteadOfNiso = cms.bool(False)			
process.analyzeHiMassTau.UseRecoTau1EllipseForEcalIso = cms.bool(False)				
process.analyzeHiMassTau.RecoTau1EcalIsoRphiForEllipse = cms.double(0.15)			
process.analyzeHiMassTau.RecoTau1EcalIsoRetaForEllipse = cms.double(0.07)			
process.analyzeHiMassTau.RecoTau1TrackNisoMax = cms.int32(0)					
process.analyzeHiMassTau.RecoTau1EcalNisoMax = cms.int32(0)					
process.analyzeHiMassTau.RecoTau1TrackIsoSumPtMaxCutValue = cms.double(1.0)			
process.analyzeHiMassTau.RecoTau1TrackIsoSumPtMinCutValue = cms.double(0.0)			
process.analyzeHiMassTau.RecoTau1EcalIsoSumPtMaxCutValue = cms.double(1.0)			
process.analyzeHiMassTau.RecoTau1EcalIsoSumPtMinCutValue = cms.double(0.0)			
process.analyzeHiMassTau.RecoTau1DiscrByProngType = cms.string('1or3hps')  		 	
process.analyzeHiMassTau.RecoTau1LeadTrackThreshold = cms.double(5.0) 				
process.analyzeHiMassTau.RecoTau1SigGamThreshold = cms.double(1.0)				
process.analyzeHiMassTau.RecoTau1IsoDeltaRCone = cms.double(0.5)	 				
process.analyzeHiMassTau.RecoTau1TrackIsoTrkThreshold = cms.double(0.8) 				
process.analyzeHiMassTau.RecoTau1GammaIsoGamThreshold = cms.double(0.8) 				
process.analyzeHiMassTau.DoRecoTau1DiscrAgainstElectron = cms.bool(False)				
process.analyzeHiMassTau.RecoTau1DiscrAgainstElectron = cms.untracked.string('againstElectronMediumMVA5')
process.analyzeHiMassTau.DoRecoTau1DiscrByCrackCut = cms.bool(False)				
process.analyzeHiMassTau.DoRecoTau1DiscrAgainstMuon = cms.bool(False) 			
process.analyzeHiMassTau.RecoTau1DiscrAgainstMuon = cms.untracked.string('againstMuonLoose3')
process.analyzeHiMassTau.SelectTau1sThatAreMuons = cms.bool(False)
process.analyzeHiMassTau.SelectTau1sThatAreElectrons = cms.bool(False)
process.analyzeHiMassTau.RemoveTau1OverlapWithMuon1s           = cms.bool(True)                        
process.analyzeHiMassTau.Tau1Muon1MatchingDeltaR               = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveTau1OverlapWithElectron1s       = cms.bool(True)                        
process.analyzeHiMassTau.Tau1Electron1MatchingDeltaR           = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveTau1OverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.Tau1Muon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveTau1OverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.Tau1Electron2MatchingDeltaR           = cms.double(0.3)

process.analyzeHiMassTau.RecoTau2EtaCut = cms.double(2.5)
process.analyzeHiMassTau.RecoTau2PtMinCut = cms.double(15.)
process.analyzeHiMassTau.RecoTau2PtMaxCut = cms.double(9999.)
process.analyzeHiMassTau.DoRecoTau2DiscrByLeadTrack = cms.bool(False)
process.analyzeHiMassTau.UseRecoTau2DiscrByLeadTrackFlag = cms.bool(True)
process.analyzeHiMassTau.RecoTau2DiscrByLeadTrack = cms.untracked.string('leadingPionPtCut')
process.analyzeHiMassTau.DoRecoTau2DiscrByLeadTrackNhits = cms.bool(False)
process.analyzeHiMassTau.RecoTau2LeadTrackMinHits = cms.int32(12)
process.analyzeHiMassTau.DoRecoTau2DiscrByH3x3OverP = cms.bool(False)
process.analyzeHiMassTau.RecoTau2H3x3OverP = cms.double(0.03)
process.analyzeHiMassTau.DoRecoTau2DiscrByIsolation = cms.bool(True)
process.analyzeHiMassTau.UseRecoTau2DiscrByIsolationFlag = cms.bool(True)
process.analyzeHiMassTau.RecoTau2DiscrByMinIsolation = cms.untracked.string('ZERO')	
process.analyzeHiMassTau.RecoTau2DiscrByMaxIsolation = cms.untracked.string('byVLooseIsolationMVA3newDMwLT')	
process.analyzeHiMassTau.UseRecoTau2IsoSumPtInsteadOfNiso = cms.bool(False)
process.analyzeHiMassTau.UseRecoTau2EllipseForEcalIso = cms.bool(False)
process.analyzeHiMassTau.RecoTau2EcalIsoRphiForEllipse = cms.double(0.15)
process.analyzeHiMassTau.RecoTau2EcalIsoRetaForEllipse = cms.double(0.07)
process.analyzeHiMassTau.RecoTau2TrackNisoMax = cms.int32(0)
process.analyzeHiMassTau.RecoTau2EcalNisoMax = cms.int32(0)
process.analyzeHiMassTau.RecoTau2TrackIsoSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.RecoTau2TrackIsoSumPtMinCutValue = cms.double(0.0)
process.analyzeHiMassTau.RecoTau2EcalIsoSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.RecoTau2EcalIsoSumPtMinCutValue = cms.double(0.0)
process.analyzeHiMassTau.RecoTau2DiscrByProngType = cms.string('1or3hps')
process.analyzeHiMassTau.RecoTau2LeadTrackThreshold = cms.double(5.0)
process.analyzeHiMassTau.RecoTau2SigGamThreshold = cms.double(1.0)
process.analyzeHiMassTau.RecoTau2IsoDeltaRCone = cms.double(0.5)
process.analyzeHiMassTau.RecoTau2TrackIsoTrkThreshold = cms.double(0.8)
process.analyzeHiMassTau.RecoTau2GammaIsoGamThreshold = cms.double(0.8)
process.analyzeHiMassTau.DoRecoTau2DiscrAgainstElectron = cms.bool(False)
process.analyzeHiMassTau.RecoTau2DiscrAgainstElectron = cms.untracked.string('againstElectronMediumMVA5')
process.analyzeHiMassTau.DoRecoTau2DiscrByCrackCut = cms.bool(False)
process.analyzeHiMassTau.DoRecoTau2DiscrAgainstMuon = cms.bool(False)
process.analyzeHiMassTau.RecoTau2DiscrAgainstMuon = cms.untracked.string('againstMuonLoose3')
process.analyzeHiMassTau.SelectTau2sThatAreMuons = cms.bool(False)
process.analyzeHiMassTau.SelectTau2sThatAreElectrons = cms.bool(False)
process.analyzeHiMassTau.RemoveTau2OverlapWithMuon1s           = cms.bool(True)                        
process.analyzeHiMassTau.Tau2Muon1MatchingDeltaR               = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveTau2OverlapWithElectron1s       = cms.bool(True)                        
process.analyzeHiMassTau.Tau2Electron1MatchingDeltaR           = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveTau2OverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.Tau2Muon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveTau2OverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.Tau2Electron2MatchingDeltaR           = cms.double(0.3)

    #-----Reco Muon Inputs
process.analyzeHiMassTau.RecoMuonSource = cms.InputTag('patMuons')				       
process.analyzeHiMassTau.UseTuneP = cms.bool(False)				
process.analyzeHiMassTau.RecoMuon1EtaCut = cms.double(2.1)					
process.analyzeHiMassTau.RecoMuon1PtMinCut = cms.double(30.)					
process.analyzeHiMassTau.RecoMuon1PtMaxCut = cms.double(9999.)					
process.analyzeHiMassTau.DoRecoMuon1DiscrByGlobal = cms.bool(True)				
process.analyzeHiMassTau.DoRecoMuon1DiscrByIsolation = cms.bool(True)				
process.analyzeHiMassTau.RecoMuon1IsoSumPtMaxCutValue = cms.double(0.2)			
process.analyzeHiMassTau.RecoMuon1IsoSumPtMinCutValue = cms.double(0.0)			
process.analyzeHiMassTau.RecoMuon1IsoDeltaRCone = cms.double(0.4)				
process.analyzeHiMassTau.RecoMuon1TrackIsoTrkThreshold = cms.double(1.0)				
process.analyzeHiMassTau.RecoMuon1EcalIsoRecHitThreshold = cms.double(1.0)			
process.analyzeHiMassTau.DoRecoMuon1DiscrByIp = cms.bool(True)					
process.analyzeHiMassTau.RecoMuon1IpCut = cms.double(0.2)					
process.analyzeHiMassTau.RecoMuon1dzCut = cms.double(0.5)					
process.analyzeHiMassTau.DoRecoMuon1DiscrByPionVeto = cms.bool(False)                           
process.analyzeHiMassTau.RecoMuon1CaloCompCoefficient = cms.double(0.8)                         
process.analyzeHiMassTau.RecoMuon1SegmCompCoefficient = cms.double(1.2)                         
process.analyzeHiMassTau.RecoMuon1AntiPionCut = cms.double(1.0)                                 
process.analyzeHiMassTau.DoRecoMuon1DiscrByNormalizedChi2 = cms.bool(False)
process.analyzeHiMassTau.RecoMuon1NormalizedChi2MaxCut = cms.int32(10)
process.analyzeHiMassTau.DoRecoMuon1DiscrByChamberHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon1ChamberHitsMinCut = cms.int32(0)
process.analyzeHiMassTau.DoRecoMuon1DiscrByMatchedStations = cms.bool(True)
process.analyzeHiMassTau.RecoMuon1MatchedStationsMinCut = cms.int32(1)
process.analyzeHiMassTau.DoRecoMuon1DiscrByPixelHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon1PixelHitsMinCut = cms.int32(0)
process.analyzeHiMassTau.DoRecoMuon1DiscrByTrackerLayerWithHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon1TrackerLayerWithHitsMinCut = cms.int32(5)
process.analyzeHiMassTau.DoRecoMuon1DiscrByDptOpt = cms.bool(False)
process.analyzeHiMassTau.RecoMuon1DptOptMaxCut = cms.double(0.3)                                 

process.analyzeHiMassTau.RecoMuon2EtaCut = cms.double(2.1)
process.analyzeHiMassTau.RecoMuon2PtMinCut = cms.double(10.)
process.analyzeHiMassTau.RecoMuon2PtMaxCut = cms.double(9999.)
process.analyzeHiMassTau.DoRecoMuon2DiscrByGlobal = cms.bool(True)
process.analyzeHiMassTau.DoRecoMuon2DiscrByIsolation = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2IsoSumPtMaxCutValue = cms.double(0.2)
process.analyzeHiMassTau.RecoMuon2IsoSumPtMinCutValue = cms.double(0.0)
process.analyzeHiMassTau.RecoMuon2IsoDeltaRCone = cms.double(0.4)
process.analyzeHiMassTau.RecoMuon2TrackIsoTrkThreshold = cms.double(1.0)
process.analyzeHiMassTau.RecoMuon2EcalIsoRecHitThreshold = cms.double(1.0)
process.analyzeHiMassTau.DoRecoMuon2DiscrByIp = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2IpCut = cms.double(0.2)
process.analyzeHiMassTau.RecoMuon2dzCut = cms.double(0.5)					
process.analyzeHiMassTau.DoRecoMuon2DiscrByPionVeto = cms.bool(False)
process.analyzeHiMassTau.RecoMuon2CaloCompCoefficient = cms.double(0.8)
process.analyzeHiMassTau.RecoMuon2SegmCompCoefficient = cms.double(1.2)
process.analyzeHiMassTau.RecoMuon2AntiPionCut = cms.double(1.0)
process.analyzeHiMassTau.DoRecoMuon2DiscrByNormalizedChi2 = cms.bool(False)
process.analyzeHiMassTau.RecoMuon2NormalizedChi2MaxCut = cms.int32(10)
process.analyzeHiMassTau.DoRecoMuon2DiscrByChamberHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2ChamberHitsMinCut = cms.int32(0)
process.analyzeHiMassTau.DoRecoMuon2DiscrByMatchedStations = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2MatchedStationsMinCut = cms.int32(1)
process.analyzeHiMassTau.DoRecoMuon2DiscrByPixelHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2PixelHitsMinCut = cms.int32(0)
process.analyzeHiMassTau.DoRecoMuon2DiscrByTrackerLayerWithHits = cms.bool(True)
process.analyzeHiMassTau.RecoMuon2TrackerLayerWithHitsMinCut = cms.int32(5)
process.analyzeHiMassTau.DoRecoMuon2DiscrByDptOpt = cms.bool(False)
process.analyzeHiMassTau.RecoMuon2DptOptMaxCut = cms.double(0.3)                                 

    #-----Reco Electron Inputs
process.analyzeHiMassTau.RecoElectronSource = cms.InputTag('heepPatElectrons')			        
process.analyzeHiMassTau.IsoValElec = cms.VInputTag(cms.InputTag('elPFIsoValueCharged03PFIdPFIso'),
                                                        cms.InputTag('elPFIsoValueNeutral03PFIdPFIso'),
                                                        cms.InputTag('elPFIsoValueGamma03NoPFIdPFIso'),
                                                        cms.InputTag('elPFIsoValuePU03NoPFIdPFIso'))
process.analyzeHiMassTau.UseHeepInfo = cms.bool(False)							
process.analyzeHiMassTau.RecoElectron1EtaCut = cms.double(2.5)						
process.analyzeHiMassTau.RecoElectron1PtMinCut = cms.double(10.)						
process.analyzeHiMassTau.RecoElectron1PtMaxCut = cms.double(9999.)					
process.analyzeHiMassTau.DoRecoElectron1DiscrByIsolation = cms.bool(True) 				
process.analyzeHiMassTau.RecoElectron1IsolationCone = cms.string('dR03')
process.analyzeHiMassTau.RecoElectron1IsoSumPtMaxCutValue = cms.double(0.2) 			
process.analyzeHiMassTau.RecoElectron1IsoSumPtMinCutValue = cms.double(0.0) 			
process.analyzeHiMassTau.DoRecoElectron1DiscrByIp = cms.bool(True) 					
process.analyzeHiMassTau.RecoElectron1IpCut = cms.double(0.04) 					
process.analyzeHiMassTau.RecoElectron1dzCut = cms.double(0.2) 					
process.analyzeHiMassTau.DoRecoElectron1DiscrByEoverP = cms.bool(False) 					
process.analyzeHiMassTau.RecoElectron1EoverPMax = cms.double(0.05) 					
process.analyzeHiMassTau.RecoElectron1EoverPMin = cms.double(0.0) 					
process.analyzeHiMassTau.DoRecoElectron1DiscrByHoverEm = cms.bool(True) 				
process.analyzeHiMassTau.RecoElectron1EEHoverEmCut = cms.double(9999.)	 				
process.analyzeHiMassTau.RecoElectron1EBHoverEmCut = cms.double(0.15)	 				
process.analyzeHiMassTau.DoRecoElectron1DiscrBySigmaIEtaIEta = cms.bool(True)				
process.analyzeHiMassTau.RecoElectron1EESigmaIEtaIEta = cms.double(0.03)				
process.analyzeHiMassTau.RecoElectron1EBSigmaIEtaIEta = cms.double(0.01)				
process.analyzeHiMassTau.DoRecoElectron1DiscrByDEtaIn = cms.bool(True)					 
process.analyzeHiMassTau.RecoElectron1EEDEtaIn = cms.double(0.01)
process.analyzeHiMassTau.RecoElectron1EBDEtaIn = cms.double(0.007)
process.analyzeHiMassTau.DoRecoElectron1DiscrByDPhiIn = cms.bool(True)
process.analyzeHiMassTau.RecoElectron1EEDPhiIn = cms.double(0.7)
process.analyzeHiMassTau.RecoElectron1EBDPhiIn = cms.double(0.8)
process.analyzeHiMassTau.DoRecoElectron1DiscrBySCE2by5Over5by5 = cms.bool(False)			
process.analyzeHiMassTau.RecoElectron1EBscE1by5Over5by5 = cms.double(0.83)					
process.analyzeHiMassTau.RecoElectron1EBscE2by5Over5by5 = cms.double(0.94)					
process.analyzeHiMassTau.DoRecoElectron1DiscrByMissingHits = cms.bool(False)
process.analyzeHiMassTau.RecoElectron1MissingHits = cms.int32(1)
process.analyzeHiMassTau.DoRecoElectron1DiscrByEcalDrivenSeed = cms.bool(False)			
process.analyzeHiMassTau.DoRecoElectron1DiscrByTrackerDrivenSeed = cms.bool(False)			

process.analyzeHiMassTau.RecoElectron2EtaCut = cms.double(2.5)
process.analyzeHiMassTau.RecoElectron2PtMinCut = cms.double(10.)
process.analyzeHiMassTau.RecoElectron2PtMaxCut = cms.double(9999.)
process.analyzeHiMassTau.DoRecoElectron2DiscrByIsolation = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2IsolationCone = cms.string('dR03')
process.analyzeHiMassTau.RecoElectron2IsoSumPtMaxCutValue = cms.double(0.2)
process.analyzeHiMassTau.RecoElectron2IsoSumPtMinCutValue = cms.double(0.0)
process.analyzeHiMassTau.DoRecoElectron2DiscrByIp = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2IpCut = cms.double(0.04)
process.analyzeHiMassTau.RecoElectron2dzCut = cms.double(0.2) 					
process.analyzeHiMassTau.DoRecoElectron2DiscrByEoverP = cms.bool(False)
process.analyzeHiMassTau.RecoElectron2EoverPMax = cms.double(0.05)
process.analyzeHiMassTau.RecoElectron2EoverPMin = cms.double(0.0)
process.analyzeHiMassTau.DoRecoElectron2DiscrByHoverEm = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2EEHoverEmCut = cms.double(9999.)
process.analyzeHiMassTau.RecoElectron2EBHoverEmCut = cms.double(0.15)
process.analyzeHiMassTau.DoRecoElectron2DiscrBySigmaIEtaIEta = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2EESigmaIEtaIEta = cms.double(0.03)
process.analyzeHiMassTau.RecoElectron2EBSigmaIEtaIEta = cms.double(0.01)
process.analyzeHiMassTau.DoRecoElectron2DiscrByDEtaIn = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2EEDEtaIn = cms.double(0.01)
process.analyzeHiMassTau.RecoElectron2EBDEtaIn = cms.double(0.007)
process.analyzeHiMassTau.DoRecoElectron2DiscrByDPhiIn = cms.bool(True)
process.analyzeHiMassTau.RecoElectron2EEDPhiIn = cms.double(0.7)
process.analyzeHiMassTau.RecoElectron2EBDPhiIn = cms.double(0.8)
process.analyzeHiMassTau.DoRecoElectron2DiscrBySCE2by5Over5by5 = cms.bool(False)
process.analyzeHiMassTau.RecoElectron2EBscE1by5Over5by5 = cms.double(0.83)
process.analyzeHiMassTau.RecoElectron2EBscE2by5Over5by5 = cms.double(0.94)
process.analyzeHiMassTau.DoRecoElectron2DiscrByMissingHits = cms.bool(False)
process.analyzeHiMassTau.RecoElectron2MissingHits = cms.int32(1)
process.analyzeHiMassTau.DoRecoElectron2DiscrByEcalDrivenSeed = cms.bool(False)
process.analyzeHiMassTau.DoRecoElectron2DiscrByTrackerDrivenSeed = cms.bool(False)

    #-----Reco Jet Inputs
process.analyzeHiMassTau.RecoJetSource                       = cms.InputTag('selectedPatJets')
process.analyzeHiMassTau.puJetIdwp                           = cms.untracked.string('puJetIdLoose') # puJetIdLoose puJetIdMedim puJetIdTight              
process.analyzeHiMassTau.UseCorrectedJet                     = cms.bool(True)                         
process.analyzeHiMassTau.RecoJet1EtaMinCut                    = cms.double(0.0)                        
process.analyzeHiMassTau.RecoJet1EtaMaxCut                    = cms.double(5.0)                      
process.analyzeHiMassTau.RecoJet1PtCut                        = cms.double(30.0)                       
process.analyzeHiMassTau.ApplyJet1LooseID                     = cms.bool(True)
process.analyzeHiMassTau.ApplyJet1PileupID                     = cms.bool(False)
process.analyzeHiMassTau.RemoveJet1OverlapWithMuon1s           = cms.bool(True)                        
process.analyzeHiMassTau.Jet1Muon1MatchingDeltaR               = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveJet1OverlapWithElectron1s       = cms.bool(True)                        
process.analyzeHiMassTau.Jet1Electron1MatchingDeltaR           = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveJet1OverlapWithTau1s            = cms.bool(True)                        
process.analyzeHiMassTau.Jet1Tau1MatchingDeltaR                = cms.double(0.3)                       
process.analyzeHiMassTau.RemoveJet1OverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.Jet1Muon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveJet1OverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.Jet1Electron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveJet1OverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.Jet1Tau2MatchingDeltaR                = cms.double(0.3)

process.analyzeHiMassTau.RecoJet2EtaMinCut                    = cms.double(0.0)                        
process.analyzeHiMassTau.RecoJet2EtaMaxCut                    = cms.double(5.0)                      
process.analyzeHiMassTau.RecoJet2PtCut                        = cms.double(30.0)                       
process.analyzeHiMassTau.ApplyJet2LooseID                     = cms.bool(True)
process.analyzeHiMassTau.ApplyJet2PileupID                     = cms.bool(False)
process.analyzeHiMassTau.RemoveJet2OverlapWithMuon1s           = cms.bool(True)                        
process.analyzeHiMassTau.Jet2Muon1MatchingDeltaR               = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveJet2OverlapWithElectron1s       = cms.bool(True)                        
process.analyzeHiMassTau.Jet2Electron1MatchingDeltaR           = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveJet2OverlapWithTau1s            = cms.bool(True)                        
process.analyzeHiMassTau.Jet2Tau1MatchingDeltaR                = cms.double(0.3)                       
process.analyzeHiMassTau.RemoveJet2OverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.Jet2Muon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveJet2OverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.Jet2Electron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveJet2OverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.Jet2Tau2MatchingDeltaR                = cms.double(0.3)

process.analyzeHiMassTau.RecoCentralJetPtCut                        = cms.double(30.0)                       
process.analyzeHiMassTau.ApplyCentralJetLooseID                     = cms.bool(True)
process.analyzeHiMassTau.ApplyCentralJetPileupID                     = cms.bool(False)
process.analyzeHiMassTau.RemoveCentralJetOverlapWithMuon1s           = cms.bool(True)                        
process.analyzeHiMassTau.CentralJetMuon1MatchingDeltaR               = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveCentralJetOverlapWithElectron1s       = cms.bool(True)                        
process.analyzeHiMassTau.CentralJetElectron1MatchingDeltaR           = cms.double(0.3)                        
process.analyzeHiMassTau.RemoveCentralJetOverlapWithTau1s            = cms.bool(True)                        
process.analyzeHiMassTau.CentralJetTau1MatchingDeltaR                = cms.double(0.3)                       
process.analyzeHiMassTau.RemoveCentralJetOverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.CentralJetMuon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveCentralJetOverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.CentralJetElectron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveCentralJetOverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.CentralJetTau2MatchingDeltaR                = cms.double(0.3)

process.analyzeHiMassTau.ApplyLeadingJetsLooseID        = cms.bool(True)
process.analyzeHiMassTau.ApplyLeadingJetsPileupID       = cms.bool(False)
process.analyzeHiMassTau.DoDiscrByFirstLeadingJet	= cms.bool(True)
process.analyzeHiMassTau.RecoFirstLeadingJetPt		= cms.double(50.0)
process.analyzeHiMassTau.RecoFirstLeadingJetEtaMinCut	= cms.double(0.0)
process.analyzeHiMassTau.RecoFirstLeadingJetEtaMaxCut	= cms.double(5.0)
process.analyzeHiMassTau.DoDiscrBySecondLeadingJet	= cms.bool(True)
process.analyzeHiMassTau.RecoSecondLeadingJetPt		= cms.double(50.0)
process.analyzeHiMassTau.RecoSecondLeadingJetEtaMinCut	= cms.double(0.0)
process.analyzeHiMassTau.RecoSecondLeadingJetEtaMaxCut	= cms.double(5.0)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithMuon1s           = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetMuon1MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithElectron1s       = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetElectron1MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithTau1s            = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetTau1MatchingDeltaR                = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithMuon1s           = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetMuon1MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithElectron1s       = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetElectron1MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithTau1s            = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetTau1MatchingDeltaR                = cms.double(0.3)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetMuon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetElectron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveFirstLeadingJetOverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.FirstLeadingJetTau2MatchingDeltaR                = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetMuon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetElectron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveSecondLeadingJetOverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.SecondLeadingJetTau2MatchingDeltaR                = cms.double(0.3)

    #-----Reco b-Jet Inputs
process.analyzeHiMassTau.RecoBJetEtaMinCut                    = cms.double(0.0)                            
process.analyzeHiMassTau.RecoBJetEtaMaxCut                    = cms.double(2.5)                            
process.analyzeHiMassTau.RecoBJetPtCut                        = cms.double(20.0)                           
process.analyzeHiMassTau.RemoveBJetOverlapWithMuon1s           = cms.bool(True)                            
process.analyzeHiMassTau.BJetMuon1MatchingDeltaR               = cms.double(0.3)                            
process.analyzeHiMassTau.RemoveBJetOverlapWithElectron1s       = cms.bool(True)                            
process.analyzeHiMassTau.BJetElectron1MatchingDeltaR           = cms.double(0.3)                            
process.analyzeHiMassTau.RemoveBJetOverlapWithTau1s            = cms.bool(True)                            
process.analyzeHiMassTau.BJetTau1MatchingDeltaR                = cms.double(0.3)                            
process.analyzeHiMassTau.RemoveBJetOverlapWithMuon2s           = cms.bool(True)
process.analyzeHiMassTau.BJetMuon2MatchingDeltaR               = cms.double(0.3)
process.analyzeHiMassTau.RemoveBJetOverlapWithElectron2s       = cms.bool(True)
process.analyzeHiMassTau.BJetElectron2MatchingDeltaR           = cms.double(0.3)
process.analyzeHiMassTau.RemoveBJetOverlapWithTau2s            = cms.bool(True)
process.analyzeHiMassTau.BJetTau2MatchingDeltaR                = cms.double(0.3)                            
process.analyzeHiMassTau.ApplyJetBTagging                    = cms.bool(True)                              
process.analyzeHiMassTau.bTagger = cms.untracked.string('combinedSecondaryVertexBJetTags')
process.analyzeHiMassTau.JetBTaggingCut                  = cms.double(0.244) # CVSL=0.244, CSVM=0.679, CSVT=0.898

    #-----Vertex Inputs
process.analyzeHiMassTau.RecoVertexSource = cms.InputTag('offlinePrimaryVertices') 				# vertex collection
process.analyzeHiMassTau.RecoVertexMaxZposition = cms.double(20.0)						# vertex |z| < X
process.analyzeHiMassTau.RecoVertexMinTracks = cms.int32(2)						# vertex must have >= 2 "good" tracks used to reconstruct it
process.analyzeHiMassTau.RecoVertexTrackWeight = cms.double(0.5)						# weight used to define "good" tracks used to reconstruct vertex

    #-----Trigger Inputs
process.analyzeHiMassTau.RecoTriggerSource = cms.InputTag("TriggerResults","","HLT")			# trigger collection
#process.analyzeHiMassTau.Trigger1Requirements = cms.vstring('HLT_DiJet35_MJJ650_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiJet35_MJJ700_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiJet35_MJJ750_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiPFJet40_PFMETnoMu65_MJJ600VBF_LeadingJets_v',
#                                                            'HLT_DiPFJet40_PFMETnoMu65_MJJ800VBF_AllJets_v')
#process.analyzeHiMassTau.Trigger2Requirements = cms.vstring('HLT_DiJet35_MJJ650_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiJet35_MJJ700_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiJet35_MJJ750_AllJets_DEta3p5_VBF_v',
#                                                            'HLT_DiPFJet40_PFMETnoMu65_MJJ600VBF_LeadingJets_v',
#                                                            'HLT_DiPFJet40_PFMETnoMu65_MJJ800VBF_AllJets_v')
process.analyzeHiMassTau.Trigger1Requirements = cms.vstring('HLT_IsoMu24_eta2p1_v')  # trigger path name
process.analyzeHiMassTau.Trigger2Requirements = cms.vstring('HLT_IsoMu24_eta2p1_v')  # trigger path name

    #-----Susy Topology Inputs
process.analyzeHiMassTau.JetPtForMhtAndHt = cms.double(30.0)
process.analyzeHiMassTau.JetEtaForMhtAndHt = cms.double(5.0)
process.analyzeHiMassTau.ApplyJetLooseIDforMhtAndHt = cms.bool(True)
process.analyzeHiMassTau.ApplyJetPileupIDforMhtAndHt = cms.bool(False)
process.analyzeHiMassTau.DoSUSYDiscrByMHT = cms.bool(False)
process.analyzeHiMassTau.MhtCut = cms.double(250.0)
process.analyzeHiMassTau.DoSUSYDiscrByHT = cms.bool(False)
process.analyzeHiMassTau.HtCut = cms.double(250.0)
process.analyzeHiMassTau.DoSUSYDiscrByR1 = cms.bool(False)
process.analyzeHiMassTau.R1MinCut = cms.double(0.85)
process.analyzeHiMassTau.R1MaxCut = cms.double(999.0)
process.analyzeHiMassTau.DoSUSYDiscrByR2 = cms.bool(False)
process.analyzeHiMassTau.R2MinCut = cms.double(0.0)
process.analyzeHiMassTau.R2MaxCut = cms.double(3.6)
process.analyzeHiMassTau.DoSUSYDiscrByAlpha = cms.bool(False)
process.analyzeHiMassTau.AlphaMinCut = cms.double(0.5)
process.analyzeHiMassTau.AlphaMaxCut = cms.double(9999999999.9)
process.analyzeHiMassTau.DoSUSYDiscrByDphi1 = cms.bool(False)
process.analyzeHiMassTau.Dphi1MinCut = cms.double(0.9)
process.analyzeHiMassTau.Dphi1MaxCut = cms.double(999.9)
process.analyzeHiMassTau.DoSUSYDiscrByDphi2 = cms.bool(False)
process.analyzeHiMassTau.Dphi2MinCut = cms.double(0.5)                                                     
process.analyzeHiMassTau.Dphi2MaxCut = cms.double(9999.5)                                               
process.analyzeHiMassTau.DoSUSYDiscrByLeadDiJetMass = cms.bool(False)
process.analyzeHiMassTau.LeadDiJetMinMassCut = cms.double(650.0)
process.analyzeHiMassTau.LeadDiJetMaxMassCut = cms.double(9999.0)
process.analyzeHiMassTau.DoSUSYDiscrByLeadDiJetPt = cms.bool(False)
process.analyzeHiMassTau.LeadDiJetMinPtCut = cms.double(0.5)
process.analyzeHiMassTau.LeadDiJetMaxPtCut = cms.double(0.5)
process.analyzeHiMassTau.DoSUSYDiscrByLeadDiJetDeltaEta = cms.bool(False)
process.analyzeHiMassTau.LeadDiJetMinDeltaEtaCut = cms.double(4.2)
process.analyzeHiMassTau.LeadDiJetMaxDeltaEtaCut = cms.double(9999.0)
process.analyzeHiMassTau.DoSUSYDiscrByLeadDiJetDeltaPhi = cms.bool(False)
process.analyzeHiMassTau.LeadDiJetMinDeltaPhiCut = cms.double(4.2)
process.analyzeHiMassTau.LeadDiJetMaxDeltaPhiCut = cms.double(9999.0)
process.analyzeHiMassTau.DoSUSYDiscrByLeadDiJetOSEta = cms.bool(False)

    #-----Topology Inputs
process.analyzeHiMassTau.RecoMetSource = cms.InputTag('patPfMetT0pcT1Txy')		
process.analyzeHiMassTau.DoDiscrByMet = cms.bool(True) 				
process.analyzeHiMassTau.TreatMuonsAsNeutrinos = cms.bool(False) 				
process.analyzeHiMassTau.RecoMetMinCut = cms.double(75.0) 					
process.analyzeHiMassTau.RecoMetMaxCut = cms.double(90000.0) 					
process.analyzeHiMassTau.DoDiJetDiscrByDeltaR = cms.bool(True) 				
process.analyzeHiMassTau.DiJetDeltaRCut = cms.double(0.3)	 			
process.analyzeHiMassTau.DoDiJetDiscrByDeltaEta = cms.bool(True)
process.analyzeHiMassTau.DiJetMinDeltaEtaCut = cms.double(4.2)	 			
process.analyzeHiMassTau.DiJetMaxDeltaEtaCut = cms.double(999.9)	 			
process.analyzeHiMassTau.DoDiJetDiscrByDeltaPhi = cms.bool(False)
process.analyzeHiMassTau.DiJetMinDeltaPhiCut = cms.double(0.0)
process.analyzeHiMassTau.DiJetMaxDeltaPhiCut = cms.double(2.5)
process.analyzeHiMassTau.DoDiJetDiscrByCosDphi = cms.bool(False) 			
process.analyzeHiMassTau.DiJetCosDphiMaxCut = cms.double(-0.95) 			
process.analyzeHiMassTau.DiJetCosDphiMinCut = cms.double(-1.00) 			
process.analyzeHiMassTau.DoDiscrByDiJetMassReco = cms.bool(True)
process.analyzeHiMassTau.DiJetMassMinCut = cms.double(750.0) 				
process.analyzeHiMassTau.DiJetMassMaxCut = cms.double(99999.0) 				
process.analyzeHiMassTau.DoDiJetDiscrByOSEta = cms.bool(True) 			
process.analyzeHiMassTau.DoDiMuonDiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.DiMuonDeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.DiMuonDiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoDiMuonDiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.DiMuonCosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.DiMuonCosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByDiMuonMassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfDiMuonProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxDiMuonMassReco = cms.bool(False)
process.analyzeHiMassTau.DiMuonMassMinCut = cms.double(60.0)
process.analyzeHiMassTau.DiMuonMassMaxCut = cms.double(120.0)
process.analyzeHiMassTau.DoDiMuonDiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.DiMuonPZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.DiMuonPZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.DiMuonCDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoDiMuonDiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.DiMuonDeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.DiMuonDeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoDiMuonDiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.DiMuonDeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.DiMuonDeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoDiTauDiscrByDeltaR = cms.bool(True) 				
process.analyzeHiMassTau.DiTauDeltaRCut = cms.double(0.3)	 			
process.analyzeHiMassTau.DiTauDiscrByOSLSType = cms.string('NONE')		 	
process.analyzeHiMassTau.UseTauSeedTrackForDiTauDiscrByOSLS = cms.bool(False) 		
process.analyzeHiMassTau.DoDiTauDiscrByCosDphi = cms.bool(False) 			
process.analyzeHiMassTau.DiTauCosDphiMaxCut = cms.double(-0.95) 			
process.analyzeHiMassTau.DiTauCosDphiMinCut = cms.double(-1.00) 			
process.analyzeHiMassTau.DoDiscrByDiTauMassReco = cms.bool(False) 				
process.analyzeHiMassTau.UseVectorSumOfDiTauProductsAndMetMassReco = cms.bool(False) 	
process.analyzeHiMassTau.UseCollinerApproxDiTauMassReco = cms.bool(False) 			
process.analyzeHiMassTau.DiTauMassMinCut = cms.double(150.0) 				
process.analyzeHiMassTau.DiTauMassMaxCut = cms.double(1000.0) 				
process.analyzeHiMassTau.DoDiTauDiscrByCDFzeta2D = cms.bool(False)			
process.analyzeHiMassTau.DiTauPZetaCutCoefficient = cms.double(1.0)				
process.analyzeHiMassTau.DiTauPZetaVisCutCoefficient = cms.double(-0.875)			
process.analyzeHiMassTau.DiTauCDFzeta2DCutValue = cms.double(-7.00)				
process.analyzeHiMassTau.DoDiTauDiscrByDeltaPtDivSumPt = cms.bool(False)		
process.analyzeHiMassTau.DiTauDeltaPtDivSumPtMinCutValue = cms.double(0.1)		
process.analyzeHiMassTau.DiTauDeltaPtDivSumPtMaxCutValue = cms.double(1.0)		
process.analyzeHiMassTau.DoDiTauDiscrByDeltaPt = cms.bool(False)			
process.analyzeHiMassTau.DiTauDeltaPtMinCutValue = cms.double(30.0)			
process.analyzeHiMassTau.DiTauDeltaPtMaxCutValue = cms.double(9999.0)			
process.analyzeHiMassTau.DoDiElectronDiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.DiElectronDeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.DiElectronDiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoDiElectronDiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.DiElectronCosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.DiElectronCosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByDiElectronMassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfDiElectronProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxDiElectronMassReco = cms.bool(False)
process.analyzeHiMassTau.DiElectronMassMinCut = cms.double(150.0)
process.analyzeHiMassTau.DiElectronMassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoDiElectronDiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.DiElectronPZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.DiElectronPZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.DiElectronCDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoDiElectronDiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.DiElectronDeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.DiElectronDeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoDiElectronDiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.DiElectronDeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.DiElectronDeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoMuon1Tau1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Muon1Tau1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Muon1Tau1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForMuon1Tau1DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoMuon1Tau1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Muon1Tau1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByMuon1Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfMuon1Tau1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxMuon1Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Muon1Tau1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoMuon1Tau1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Muon1Tau1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Muon1Tau1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoMuon1Tau1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Muon1Tau1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoMuon1Tau1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Muon1Tau1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoMuon1Tau2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Muon1Tau2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Muon1Tau2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForMuon1Tau2DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoMuon1Tau2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Muon1Tau2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByMuon1Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfMuon1Tau2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxMuon1Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Muon1Tau2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoMuon1Tau2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Muon1Tau2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Muon1Tau2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoMuon1Tau2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Muon1Tau2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoMuon1Tau2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Muon1Tau2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Muon1Tau2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoMuon2Tau1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Muon2Tau1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Muon2Tau1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForMuon2Tau1DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoMuon2Tau1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Muon2Tau1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByMuon2Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfMuon2Tau1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxMuon2Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Muon2Tau1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoMuon2Tau1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Muon2Tau1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Muon2Tau1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoMuon2Tau1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Muon2Tau1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoMuon2Tau1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Muon2Tau1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoMuon2Tau2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Muon2Tau2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Muon2Tau2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForMuon2Tau2DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoMuon2Tau2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Muon2Tau2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByMuon2Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfMuon2Tau2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxMuon2Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Muon2Tau2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoMuon2Tau2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Muon2Tau2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Muon2Tau2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoMuon2Tau2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Muon2Tau2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoMuon2Tau2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Muon2Tau2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Muon2Tau2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron1Tau1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron1Tau1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron1Tau1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForElectron1Tau1DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoElectron1Tau1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron1Tau1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron1Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron1Tau1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron1Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron1Tau1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron1Tau1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron1Tau1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron1Tau1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron1Tau1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron1Tau1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron1Tau1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron1Tau1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron1Tau2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron1Tau2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron1Tau2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForElectron1Tau2DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoElectron1Tau2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron1Tau2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron1Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron1Tau2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron1Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron1Tau2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron1Tau2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron1Tau2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron1Tau2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron1Tau2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron1Tau2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron1Tau2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Tau2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron1Tau2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron2Tau1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron2Tau1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron2Tau1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForElectron2Tau1DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoElectron2Tau1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron2Tau1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron2Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron2Tau1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron2Tau1MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron2Tau1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron2Tau1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron2Tau1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron2Tau1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron2Tau1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron2Tau1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron2Tau1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron2Tau1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron2Tau2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron2Tau2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron2Tau2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.UseTauSeedTrackForElectron2Tau2DiscrByOSLS = cms.bool(False)
process.analyzeHiMassTau.DoElectron2Tau2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron2Tau2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron2Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron2Tau2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron2Tau2MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron2Tau2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron2Tau2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron2Tau2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron2Tau2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron2Tau2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron2Tau2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron2Tau2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Tau2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron2Tau2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron1Muon1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron1Muon1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron1Muon1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoElectron1Muon1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron1Muon1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron1Muon1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron1Muon1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron1Muon1MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron1Muon1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron1Muon1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron1Muon1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron1Muon1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron1Muon1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron1Muon1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron1Muon1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron1Muon1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron1Muon2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron1Muon2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron1Muon2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoElectron1Muon2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron1Muon2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron1Muon2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron1Muon2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron1Muon2MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron1Muon2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron1Muon2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron1Muon2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron1Muon2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron1Muon2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron1Muon2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron1Muon2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron1Muon2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron1Muon2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron2Muon1DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron2Muon1DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron2Muon1DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoElectron2Muon1DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon1CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron2Muon1CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron2Muon1MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron2Muon1ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron2Muon1MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon1MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron2Muon1MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron2Muon1DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon1PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron2Muon1PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron2Muon1CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron2Muon1DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon1DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron2Muon1DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron2Muon1DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon1DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron2Muon1DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoElectron2Muon2DiscrByDeltaR = cms.bool(True)
process.analyzeHiMassTau.Electron2Muon2DeltaRCut = cms.double(0.3)
process.analyzeHiMassTau.Electron2Muon2DiscrByOSLSType = cms.string('NONE')
process.analyzeHiMassTau.DoElectron2Muon2DiscrByCosDphi = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon2CosDphiMaxCut = cms.double(-0.95)
process.analyzeHiMassTau.Electron2Muon2CosDphiMinCut = cms.double(-1.00)
process.analyzeHiMassTau.DoDiscrByElectron2Muon2MassReco = cms.bool(False)
process.analyzeHiMassTau.UseVectorSumOfElectron2Muon2ProductsAndMetMassReco = cms.bool(False)
process.analyzeHiMassTau.UseCollinerApproxElectron2Muon2MassReco = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon2MassMinCut = cms.double(150.0)
process.analyzeHiMassTau.Electron2Muon2MassMaxCut = cms.double(1000.0)
process.analyzeHiMassTau.DoElectron2Muon2DiscrByCDFzeta2D = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon2PZetaCutCoefficient = cms.double(1.0)
process.analyzeHiMassTau.Electron2Muon2PZetaVisCutCoefficient = cms.double(-0.875)
process.analyzeHiMassTau.Electron2Muon2CDFzeta2DCutValue = cms.double(-7.00)
process.analyzeHiMassTau.DoElectron2Muon2DiscrByDeltaPtDivSumPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon2DeltaPtDivSumPtMinCutValue = cms.double(0.1)
process.analyzeHiMassTau.Electron2Muon2DeltaPtDivSumPtMaxCutValue = cms.double(1.0)
process.analyzeHiMassTau.DoElectron2Muon2DiscrByDeltaPt = cms.bool(False)
process.analyzeHiMassTau.Electron2Muon2DeltaPtMinCutValue = cms.double(30.0)
process.analyzeHiMassTau.Electron2Muon2DeltaPtMaxCutValue = cms.double(9999.0)
process.analyzeHiMassTau.DoDiscrByMuon1MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Muon1MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Muon1MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByMuon2MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Muon2MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Muon2MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByElectron1MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Electron1MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Electron1MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByElectron2MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Electron2MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Electron2MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByTau1MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Tau1MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Tau1MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByTau2MetDphi = cms.bool(False)				
process.analyzeHiMassTau.Tau2MetDphiMinCut = cms.double(1.30)				
process.analyzeHiMassTau.Tau2MetDphiMaxCut = cms.double(3.15)				
process.analyzeHiMassTau.DoDiscrByMuon1MetMt = cms.bool(False)
process.analyzeHiMassTau.Muon1MetMtMinCut = cms.double(0.0)
process.analyzeHiMassTau.Muon1MetMtMaxCut = cms.double(40.0)
process.analyzeHiMassTau.DoDiscrByMuon2MetMt = cms.bool(False)
process.analyzeHiMassTau.Muon2MetMtMinCut = cms.double(0.0)
process.analyzeHiMassTau.Muon2MetMtMaxCut = cms.double(99999.9)
process.analyzeHiMassTau.DoDiscrByElectron1MetMt = cms.bool(False)
process.analyzeHiMassTau.Electron1MetMtMinCut = cms.double(50.0)
process.analyzeHiMassTau.Electron1MetMtMaxCut = cms.double(100.0)
process.analyzeHiMassTau.DoDiscrByElectron2MetMt = cms.bool(False)
process.analyzeHiMassTau.Electron2MetMtMinCut = cms.double(0.0)
process.analyzeHiMassTau.Electron2MetMtMaxCut = cms.double(99999.9)
process.analyzeHiMassTau.DoDiscrByTau1MetMt = cms.bool(False)
process.analyzeHiMassTau.Tau1MetMtMinCut = cms.double(50.0)
process.analyzeHiMassTau.Tau1MetMtMaxCut = cms.double(100.0)
process.analyzeHiMassTau.DoDiscrByTau2MetMt = cms.bool(False)
process.analyzeHiMassTau.Tau2MetMtMinCut = cms.double(0.0)
process.analyzeHiMassTau.Tau2MetMtMaxCut = cms.double(99999.9)
process.analyzeHiMassTau.DoMuon1DiscrByIsZllCut = cms.bool(False)
process.analyzeHiMassTau.DoMuon2DiscrByIsZllCut = cms.bool(False)
process.analyzeHiMassTau.DoElectron1DiscrByIsZllCut = cms.bool(False)
process.analyzeHiMassTau.DoElectron2DiscrByIsZllCut = cms.bool(False)

    #-----do matching to gen?
process.analyzeHiMassTau.MatchBToGen = cms.bool(False)                                           
process.analyzeHiMassTau.MatchLeptonToGen = cms.bool(False)                                           
process.analyzeHiMassTau.UseLeptonMotherId = cms.bool(False)                                         
process.analyzeHiMassTau.UseLeptonGrandMotherId = cms.bool(False)                                    
process.analyzeHiMassTau.LeptonMotherId = cms.int32(24)                                                     
process.analyzeHiMassTau.LeptonGrandMotherId = cms.int32(32)                                               
process.analyzeHiMassTau.MatchTauToGen = cms.bool(False)                                                    
process.analyzeHiMassTau.UseTauMotherId = cms.bool(False)                                                  
process.analyzeHiMassTau.UseTauGrandMotherId = cms.bool(False)                                              
process.analyzeHiMassTau.TauMotherId = cms.int32(25)                                                        
process.analyzeHiMassTau.TauGrandMotherId = cms.int32(1)                                                    
process.analyzeHiMassTau.TauToGenMatchingDeltaR = cms.double(0.25)                                          
process.analyzeHiMassTau.TauDecayModeType = cms.vstring('1','2','3','4','5','6','7')   #1 = rho1prong
                                                                                       #2 = a1prong
                                                                                       #3 = a3prong
                                                                                       #4 = noresonance1prong0pizero
                                                                                       #5 = noresonance1prongGte1pizero
                                                                                       #6 = noresonance3prong0pizero
                                                                                       #7 = noresonance3prongGte1pizero

    #-----Create the Ntuple?
process.analyzeHiMassTau.DoProduceNtuple = cms.bool(False)                                              

    #-----Event Sequence inputs
process.analyzeHiMassTau.GenTauNmin = cms.int32(0)
process.analyzeHiMassTau.GenTauNmax = cms.int32(10000)
process.analyzeHiMassTau.GenTopNmin = cms.int32(0)
process.analyzeHiMassTau.GenTopNmax = cms.int32(10000)
process.analyzeHiMassTau.GenElectronNmin = cms.int32(0)
process.analyzeHiMassTau.GenElectronNmax = cms.int32(10000)
process.analyzeHiMassTau.GenMuonNmin = cms.int32(0)
process.analyzeHiMassTau.GenMuonNmax = cms.int32(10000)
process.analyzeHiMassTau.GenZNmin = cms.int32(0)
process.analyzeHiMassTau.GenZNmax = cms.int32(10000)
process.analyzeHiMassTau.GenWNmin = cms.int32(0)
process.analyzeHiMassTau.GenWNmax = cms.int32(10000)
process.analyzeHiMassTau.GenSMHiggsNmin = cms.int32(0)
process.analyzeHiMassTau.GenSMHiggsNmax = cms.int32(10000)
process.analyzeHiMassTau.RecoVertexNmin = cms.int32(0)					# require event to have >=X vertices passing specified cuts
process.analyzeHiMassTau.RecoVertexNmax = cms.int32(10000)				# require event to have <=X vertices passing specified cuts
process.analyzeHiMassTau.RecoTriggers1Nmin = cms.int32(1)				# require event to pass >=X trigger paths defined above
process.analyzeHiMassTau.RecoMuon1Nmin = cms.int32(1)							
process.analyzeHiMassTau.RecoMuon1Nmax = cms.int32(1)							
process.analyzeHiMassTau.RecoMuon2Nmin = cms.int32(1)							
process.analyzeHiMassTau.RecoMuon2Nmax = cms.int32(1)							
process.analyzeHiMassTau.RecoElectron1Nmin = cms.int32(0)							
process.analyzeHiMassTau.RecoElectron1Nmax = cms.int32(0)							
process.analyzeHiMassTau.RecoElectron2Nmin = cms.int32(0)							
process.analyzeHiMassTau.RecoElectron2Nmax = cms.int32(0)							
process.analyzeHiMassTau.RecoTau1Nmin = cms.int32(0)							
process.analyzeHiMassTau.RecoTau1Nmax = cms.int32(0)							
process.analyzeHiMassTau.RecoTau2Nmin = cms.int32(0)							
process.analyzeHiMassTau.RecoTau2Nmax = cms.int32(0)							
process.analyzeHiMassTau.RecoJet1Nmin = cms.int32(2)							
process.analyzeHiMassTau.RecoJet1Nmax = cms.int32(2)						        
process.analyzeHiMassTau.RecoJet2Nmin = cms.int32(2)							
process.analyzeHiMassTau.RecoJet2Nmax = cms.int32(2)						        
process.analyzeHiMassTau.RecoCentralJetNmin = cms.int32(0)							
process.analyzeHiMassTau.RecoCentralJetNmax = cms.int32(1000)						        
process.analyzeHiMassTau.RecoFirstLeadingJetNmin = cms.int32(1)
process.analyzeHiMassTau.RecoSecondLeadingJetNmin = cms.int32(1)
process.analyzeHiMassTau.RecoBJetNmin = cms.int32(0)							# require event to have >=X "jets" passing specified cuts
process.analyzeHiMassTau.RecoBJetNmax = cms.int32(0)						        # require event to have <=X "jets" passing specified cuts
process.analyzeHiMassTau.SusyCombinationsNmin = cms.int32(1)
process.analyzeHiMassTau.RecoMuon1MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoMuon1MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.RecoMuon2MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoMuon2MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.RecoElectron1MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoElectron1MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.RecoElectron2MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoElectron2MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.RecoTau1MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoTau1MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.RecoTau2MetTopologyNmin = cms.int32(0)
process.analyzeHiMassTau.RecoTau2MetTopologyNmax = cms.int32(1000)
process.analyzeHiMassTau.DiMuonCombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.DiMuonCombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.DiElectronCombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.DiElectronCombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.DiTauCombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.DiTauCombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.DiJetCombinationsNmin = cms.int32(1)						 
process.analyzeHiMassTau.DiJetCombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Muon1Tau1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Muon1Tau1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Muon1Tau2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Muon1Tau2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Muon2Tau1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Muon2Tau1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Muon2Tau2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Muon2Tau2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron1Tau1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron1Tau1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron1Tau2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron1Tau2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron2Tau1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron2Tau1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron2Tau2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron2Tau2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron1Muon1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron1Muon1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron1Muon2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron1Muon2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron2Muon1CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron2Muon1CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.Electron2Muon2CombinationsNmin = cms.int32(0)						 
process.analyzeHiMassTau.Electron2Muon2CombinationsNmax = cms.int32(10000)						
process.analyzeHiMassTau.RecoTriggers2Nmin = cms.int32(1)				# require event to pass >=X trigger paths defined above

process.analyzeHiMassTau.TopologicalSelectionSequence = cms.vstring('RecoTriggers1Nmin',
                                                                    'RecoMuon1Nmax',
                                                                    'RecoMuon2Nmax',
                                                                    'RecoElectron1Nmax',
                                                                    'RecoTau1Nmax',
                                                                    'RecoJet1Nmax',
                                                                    'RecoSecondLeadingJetNmin',
                                                                    'RecoBJetNmax',
                                                                    'SusyCombinationsNmin',
                                                                    'DiJetCombinationsNmax',
                                                                    'RecoTriggers2Nmin',
)


process.analyzeHiMassTau.EventSelectionSequence = cms.vstring('GenTauNmin','GenTauNmax',
                                                              'GenTopNmin','GenTopNmax',
                                                              'GenElectronNmin','GenElectronNmax',
                                                              'GenMuonNmin','GenMuonNmax',
                                                              'GenZNmin','GenZNmax',
                                                              'GenWNmin','GenWNmax',
                                                              'GenSMHiggsNmin','GenSMHiggsNmax',
                                                              'RecoVertexNmin','RecoVertexNmax',
                                                              'RecoTriggers1Nmin',
                                                              'RecoMuon1Nmin','RecoMuon1Nmax',
                                                              'RecoMuon2Nmin','RecoMuon2Nmax',
                                                              'RecoElectron1Nmin','RecoElectron1Nmax',
                                                              'RecoElectron2Nmin','RecoElectron2Nmax',
                                                              'RecoTau1Nmin','RecoTau1Nmax',
                                                              'RecoTau2Nmin','RecoTau2Nmax',
                                                              'RecoJet1Nmin','RecoJet1Nmax',
                                                              'RecoJet2Nmin','RecoJet2Nmax',
                                                              'RecoCentralJetNmin','RecoCentralJetNmax',
                                                              'RecoFirstLeadingJetNmin','RecoSecondLeadingJetNmin',
                                                              'RecoBJetNmin','RecoBJetNmax','SusyCombinationsNmin',
                                                              'RecoMuon1MetTopologyNmin','RecoMuon1MetTopologyNmax',
                                                              'RecoMuon2MetTopologyNmin','RecoMuon2MetTopologyNmax',
                                                              'RecoElectron1MetTopologyNmin','RecoElectron1MetTopologyNmax',
                                                              'RecoElectron2MetTopologyNmin','RecoElectron2MetTopologyNmax',
                                                              'RecoTau1MetTopologyNmin','RecoTau1MetTopologyNmax',
                                                              'RecoTau2MetTopologyNmin','RecoTau2MetTopologyNmax',
                                                              'DiMuonCombinationsNmin','DiMuonCombinationsNmax',
                                                              'DiElectronCombinationsNmin','DiElectronCombinationsNmax',
                                                              'DiTauCombinationsNmin','DiTauCombinationsNmax',
                                                              'DiJetCombinationsNmin','DiJetCombinationsNmax',
                                                              'Muon1Tau1CombinationsNmin','Muon1Tau1CombinationsNmax',
                                                              'Muon1Tau2CombinationsNmin','Muon1Tau2CombinationsNmax',
                                                              'Muon2Tau1CombinationsNmin','Muon2Tau1CombinationsNmax',
                                                              'Muon2Tau2CombinationsNmin','Muon2Tau2CombinationsNmax',
                                                              'Electron1Tau1CombinationsNmin','Electron1Tau1CombinationsNmax',
                                                              'Electron1Tau2CombinationsNmin','Electron1Tau2CombinationsNmax',
                                                              'Electron2Tau1CombinationsNmin','Electron2Tau1CombinationsNmax',
                                                              'Electron2Tau2CombinationsNmin','Electron2Tau2CombinationsNmax',
                                                              'Electron1Muon1CombinationsNmin','Electron1Muon1CombinationsNmax',
                                                              'Electron1Muon2CombinationsNmin','Electron1Muon2CombinationsNmax',
                                                              'Electron2Muon1CombinationsNmin','Electron2Muon1CombinationsNmax',
                                                              'Electron2Muon2CombinationsNmin','Electron2Muon2CombinationsNmax',
                                                              'RecoTriggers2Nmin',
)

    #-----Inputs for systematic uncertainties
process.analyzeHiMassTau.CalculatePdfSystematicUncertanties = cms.bool(False)				# if true, pdf systematic uncertanties will be calculated
process.analyzeHiMassTau.PdfWeightTags = cms.untracked.VInputTag("cteq65PdfWeights")			# collection of weights for systematic uncertanties
process.analyzeHiMassTau.CalculateFSRSystematics = cms.bool(False)
process.analyzeHiMassTau.CalculateISRGluonSystematics = cms.bool(False)
process.analyzeHiMassTau.CalculateISRGammaSystematics = cms.bool(False)
process.analyzeHiMassTau.SmearTheMuon = cms.bool(False)
process.analyzeHiMassTau.MuonPtScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.MuonPtSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.MuonEtaScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.MuonEtaSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.MuonPhiScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.MuonPhiSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.SmearTheElectron = cms.bool(False)
process.analyzeHiMassTau.ElectronPtScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.ElectronPtSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.ElectronEtaScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.ElectronEtaSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.ElectronPhiScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.ElectronPhiSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.SmearTheTau = cms.bool(False)
process.analyzeHiMassTau.TauPtScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.TauPtSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.TauEtaScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.TauEtaSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.TauPhiScaleOffset = cms.double(1.0)
process.analyzeHiMassTau.TauPhiSigmaOffset = cms.double(1.0)
process.analyzeHiMassTau.SmearTheJet = cms.bool(False)
process.analyzeHiMassTau.UseDataBaseForJEC = cms.bool(True)
process.analyzeHiMassTau.JES_UpOrDown = cms.double(1.0)    
process.analyzeHiMassTau.JetEnergyScaleOffset = cms.double(1.0)    
process.analyzeHiMassTau.SmearThePt = cms.bool(False)
process.analyzeHiMassTau.SmearTheEta = cms.bool(False)
process.analyzeHiMassTau.SmearThePhi = cms.bool(False)
process.analyzeHiMassTau.CalculatePUSystematics = cms.bool(True)
process.analyzeHiMassTau.DataHistos = cms.string("PileUpRA2.root")
process.analyzeHiMassTau.MCHistos = cms.string("pu_S10_mc.root")

process.p = cms.Path(
  process.analyzeHiMassTau
)
