import '../../di/client_module.dart';
import 'app_storage.dart';
import 'env.dart';

mixin AppConfigType {
  /// Base domain
  late String baseDomain;

  late String urlAppOverview;

  /// Access token
  String? accessToken;

  /// User id
  int? userId;

  /// Tenant id
  String? tenantId;

  /// User id
  String? customerId;

  /// api key
  String? googleApiKey;

  /// Identity base url
  late String identifyBaseUrl;
}

class AppConfig with AppConfigType, ClientModule {
  static final AppConfig shared = AppConfig._instance();
  final _appStorage = AppStorage.instance;

  factory AppConfig({required Environment env}) {
    shared.env = env;
    return shared;
  }

  AppConfig._instance();

  Environment? env;

  @override
  String get baseDomain => env?.baseDomain ?? '';

  @override
  String get urlAppOverview => env?.urlAppOverview ?? '';

  @override
  String get accessToken => "";

  @override
  int get userId => _appStorage.userId ?? 0;

  @override
  String get tenantId => _appStorage.tenantId ?? '';

  @override
  String get customerId => _appStorage.customerId ?? '';

  @override
  String get googleApiKey => env?.googleApiKey ?? '';
}
