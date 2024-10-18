
import 'env.dart';

extension ProductionEnv on Environment {
  static Environment env() {
    return Environment(
      envName: 'LIV',
      baseDomain:
      'https://jlstgappdirectsaleapi-beahebhkbnc7hmhm.uksouth-01.azurewebsites.net',
      urlAppOverview:
      'https://stgmarketplace.joblogic.com/Details/direct-sale-47',
      appTokenClientId: "TradeHero.Client",
      oAuthClientId: 'joblogic',
      oAuthClientSecret: '2b052bfa-99fe-4765-8398-9f82076dd2b3',
      googleApiKey: 'AIzaSyD1Ao54R0v6ht3q8AZPcxoRDsPoG3ZfID4',
    );
  }
}

extension UatEnv on Environment {
  static Environment env() {
    return Environment(
      envName: 'DEV',
      baseDomain:
      'https://jlstgappdirectsaleapi-beahebhkbnc7hmhm.uksouth-01.azurewebsites.net',
      urlAppOverview:
      'https://stgmarketplace.joblogic.com/Details/direct-sale-47',
      appTokenClientId: "TradeHero.DevClientCredential",
      oAuthClientId: 'joblogic',
      oAuthClientSecret: '29de2459-b8ec-41f6-b8ef-b78dfd1d5f34',
      googleApiKey: 'AIzaSyD1Ao54R0v6ht3q8AZPcxoRDsPoG3ZfID4',
    );
  }
}

extension DevelopmentEnv on Environment {
  static Environment env() {
    return Environment(
      envName: 'DEV',
      baseDomain:
      'https://jlstgappdirectsaleapi-beahebhkbnc7hmhm.uksouth-01.azurewebsites.net',
      urlAppOverview:
      'https://stgmarketplace.joblogic.com/Details/direct-sale-47',
      appTokenClientId: "TradeHero.DevClientCredential",
      oAuthClientId: 'joblogic',
      oAuthClientSecret: '29de2459-b8ec-41f6-b8ef-b78dfd1d5f34',
      googleApiKey: 'AIzaSyD1Ao54R0v6ht3q8AZPcxoRDsPoG3ZfID4',
    );
  }
}