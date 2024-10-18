import 'enviroment.dart';

class Environment {
  static const String dev = 'DEV';
  static const String uat = 'UAT';
  static const String liv = 'LIV';

  /// Prod environment
  factory Environment.production() {
    return ProductionEnv.env();
  }

  /// UAT environment
  factory Environment.userAcceptTest() {
    return UatEnv.env();
  }

  /// Dev environment
  factory Environment.development() {
    return DevelopmentEnv.env();
  }

  static Environment getConfigEnvironment(String env) {
    switch (env.toUpperCase()) {
      case dev:
        return Environment.development();
      case uat:
        return Environment.userAcceptTest();
      case liv:
        return Environment.production();
      default:
        return Environment.production();
    }
  }

  Environment({
    required this.envName,
    required this.baseDomain,
    required this.urlAppOverview,
    required this.appTokenClientId,
    required this.oAuthClientId,
    required this.oAuthClientSecret,
    required this.googleApiKey,
  });

  final String envName;
  final String baseDomain;
  final String urlAppOverview;
  final String appTokenClientId;
  final String oAuthClientId;
  final String oAuthClientSecret;
  final String googleApiKey;
}
