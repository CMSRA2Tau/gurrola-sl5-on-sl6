from WMCore.Configuration import Configuration
config = Configuration()
config.section_('General')
config.General.requestName = 'crab3_2012C'
config.section_('JobType')
config.JobType.psetName = 'patProd_data_SingleE.py'
config.JobType.pluginName = 'Analysis'
config.JobType.outputFiles = ['skimPat.root']
config.JobType.pyCfgParams = ['noprint']
config.section_('Data')
config.Data.inputDataset = '/SingleElectron/Run2012C-22Jan2013-v1/AOD'
config.Data.publication = True
config.Data.publishDbsUrl = 'https://cmsweb.cern.ch/dbs/prod/phys03/DBSWriter/'
config.Data.unitsPerJob = 20
config.Data.splitting = 'LumiBased'
config.Data.lumiMask = 'JSON.txt'
config.Data.publishDataName = 'SkimPatTest1'
config.section_('User')
config.User.email = ''
config.section_('Site')
config.Site.storageSite = 'T2_US_Vanderbilt'
