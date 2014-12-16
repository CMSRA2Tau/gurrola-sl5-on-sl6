from WMCore.Configuration import Configuration
config = Configuration()
config.section_('General')
config.General.requestName = 'crab3_2012D'
config.section_('JobType')
config.JobType.psetName = 'patProd_data_SingleMu.py'
config.JobType.pluginName = 'Analysis'
config.JobType.outputFiles = ['skimPat.root']
config.JobType.pyCfgParams = ['noprint']
config.section_('Data')
config.Data.inputDataset = '/SingleMu/Run2012D-22Jan2013-v1/AOD'
config.Data.publication = True
config.Data.publishDbsUrl = 'https://cmsweb.cern.ch/dbs/prod/phys03/DBSWriter/'
config.Data.unitsPerJob = 20
config.Data.splitting = 'LumiBased'
config.Data.lumiMask = 'JSON.txt'
config.Data.publishDataName = 'SkimPatMuon'
config.section_('User')
config.User.email = ''
config.section_('Site')
config.Site.storageSite = 'T2_US_Vanderbilt'

