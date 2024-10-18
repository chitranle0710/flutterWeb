import 'package:get_storage/get_storage.dart';

enum AppStorageKey {
  baseDomain,
  axaDomain,
  accessToken,
  userId,
  userName,
  userEmail,
  clientName,
  tenantId,
  refreshToken,
  workflowBaseUrl,
  webWorkflowUrl,
  refcomBaseUrl,
  identifyBaseUrl,
  webBaseUrl,
  engineerAutoId,
  clientId,
  clientSecret,
  grantType,
  scope,
  filterValue,
  filterNumber,
  oauthCodeVerifier,
  expiryDate,
  email,
  customerId
}

class AppStorage {
  AppStorage._();

  static final instance = AppStorage._();
  final _box = GetStorage();

  Future<void> ensureInitialized() async {
    await GetStorage.init();
  }

  // Base domain
  String? get baseDomain {
    return _box.read(AppStorageKey.baseDomain.name);
  }

  Future<void> setBaseDomain(String value) async {
    await _box.write(AppStorageKey.baseDomain.name, value);
  }

  // Axa domain
  String? get axaDomain {
    return _box.read(AppStorageKey.axaDomain.name);
  }

  Future<void> setAxaDomain(String value) async {
    await _box.write(AppStorageKey.axaDomain.name, value);
  }

  // Access token
  String? get accessToken {
    return _box.read(AppStorageKey.accessToken.name);
  }

  Future<void> setAccessToken(String value) async {
    await _box.write(AppStorageKey.accessToken.name, value);
  }

  // User id
  int? get userId {
    return _box.read(AppStorageKey.userId.name);
  }

  Future<void> setUserId(int value) async {
    await _box.write(AppStorageKey.userId.name, value);
  }

  String? get userName {
    return _box.read(AppStorageKey.userName.name);
  }

  Future<void> setUserName(String value) async {
    await _box.write(AppStorageKey.userName.name, value);
  }

  String? get userEmail {
    return _box.read(AppStorageKey.userEmail.name);
  }

  Future<void> setUserEmail(String value) async {
    await _box.write(AppStorageKey.userEmail.name, value);
  }

  String? get clientName {
    return _box.read(AppStorageKey.clientName.name);
  }

  Future<void> setClientName(String value) async {
    await _box.write(AppStorageKey.clientName.name, value);
  }

  // Tenant id
  String? get tenantId {
    return _box.read(AppStorageKey.tenantId.name);
  }

  Future<void> setTenantId(String value) async {
    await _box.write(AppStorageKey.tenantId.name, value);
  }

  String? get customerId {
    return _box.read(AppStorageKey.customerId.name);
  }

  Future<void> setCustomerId(String value) async {
    await _box.write(AppStorageKey.customerId.name, value);
  }

  // Refresh token
  String? get refreshToken {
    return _box.read(AppStorageKey.refreshToken.name);
  }

  Future<void> setRefreshToken(String value) async {
    await _box.write(AppStorageKey.refreshToken.name, value);
  }

  // Work flow token
  String? get workflowBaseUrl {
    return _box.read(AppStorageKey.workflowBaseUrl.name);
  }

  Future<void> setWorkflowBaseUrl(String value) async {
    await _box.write(AppStorageKey.workflowBaseUrl.name, value);
  }

  // Webhook flow url
  String? get webWorkflowUrl {
    return _box.read(AppStorageKey.webWorkflowUrl.name);
  }

  Future<void> setWebWorkflowUrl(String value) async {
    await _box.write(AppStorageKey.webWorkflowUrl.name, value);
  }

  // Refcom base url
  String? get refcomBaseUrl {
    return _box.read(AppStorageKey.refcomBaseUrl.name);
  }

  Future<void> setRefcomBaseUrl(String value) async {
    await _box.write(AppStorageKey.refcomBaseUrl.name, value);
  }

  // Identify base url
  String? get identifyBaseUrl {
    return _box.read(AppStorageKey.identifyBaseUrl.name);
  }

  Future<void> setIdentifyBaseUrl(String value) async {
    await _box.write(AppStorageKey.identifyBaseUrl.name, value);
  }

  // clientId
  Future<void> setClientId(String value) async {
    await _box.write(AppStorageKey.clientId.name, value);
  }

  String? get clientId {
    return _box.read(AppStorageKey.clientId.name);
  }

  // clientSecret
  Future<void> setClientSecret(String value) async {
    await _box.write(AppStorageKey.clientSecret.name, value);
  }

  String? get clientSecret {
    return _box.read(AppStorageKey.clientSecret.name);
  }

  // grantType
  Future<void> setGrantType(String value) async {
    await _box.write(AppStorageKey.grantType.name, value);
  }

  String? get grantType {
    return _box.read(AppStorageKey.grantType.name);
  }

  // scope
  Future<void> setScope(String value) async {
    await _box.write(AppStorageKey.scope.name, value);
  }

  String? get scope {
    return _box.read(AppStorageKey.scope.name);
  }

  // Web base url
  String? get webBaseUrl {
    return _box.read(AppStorageKey.webBaseUrl.name);
  }

  Future<void> setWebBaseUrl(String value) async {
    await _box.write(AppStorageKey.webBaseUrl.name, value);
  }

  // Engineer auto id
  int? get engineerAutoId {
    return _box.read(AppStorageKey.engineerAutoId.name);
  }

  Future<void> setEngineerAutoId(int value) async {
    await _box.write(AppStorageKey.engineerAutoId.name, value);
  }

  // filter
  Future<void> setFilterValue(String value) async {
    await _box.write(AppStorageKey.filterValue.name, value);
  }

  String? get filterValue {
    return _box.read(AppStorageKey.filterValue.name);
  }

  // scope
  Future<void> setFilterNumber(String value) async {
    await _box.write(AppStorageKey.filterNumber.name, value);
  }

  String? get filterNumber {
    return _box.read(AppStorageKey.filterNumber.name);
  }

  String? get oauthCodeVerifier {
    return _box.read(AppStorageKey.oauthCodeVerifier.name);
  }

  Future<void> setOauthCodeVerifier(String value) async {
    await _box.write(AppStorageKey.oauthCodeVerifier.name, value);
  }

  // Getter and Setter for expiryDate
  String? get expiryDate {
    return _box.read(AppStorageKey.expiryDate.name);
  }

  Future<void> setExpiryDate(String value) async {
    await _box.write(AppStorageKey.expiryDate.name, value);
  }

  String get email {
    return _box.read(AppStorageKey.email.name) ?? '';
  }

  Future<void> setEmail(String value) async {
    await _box.write(AppStorageKey.email.name, value);
  }

  Future<void> setupAppConfig({
    required String baseDomain,
    required int userId,
    required String tenantId,
    required String workflowBaseUrl,
    required String webWorkflowUrl,
    required String refcomBaseUrl,
    required String identifyBaseUrl,
    required String webBaseUrl,
    required int engineerAutoId,
  }) async {
    await AppStorage.instance.setBaseDomain(baseDomain);
    await AppStorage.instance.setUserId(userId);
    await AppStorage.instance.setTenantId(tenantId);
    await AppStorage.instance.setWorkflowBaseUrl(workflowBaseUrl);
    await AppStorage.instance.setWebWorkflowUrl(webWorkflowUrl);
    await AppStorage.instance.setRefcomBaseUrl(refcomBaseUrl);
    await AppStorage.instance.setIdentifyBaseUrl(identifyBaseUrl);
    await AppStorage.instance.setWebBaseUrl(webBaseUrl);
    await AppStorage.instance.setEngineerAutoId(engineerAutoId);
  }

  Future<void> setupAxaAppConfig({
    required String axaDomain,
    required int userId,
    required String accessToken,
    required String tenantId,
    required String refreshToken,
    required String workflowBaseUrl,
    required String webWorkflowUrl,
    required String refcomBaseUrl,
    required String identifyBaseUrl,
    required String webBaseUrl,
    required int engineerAutoId,
  }) async {
    await AppStorage.instance.setAxaDomain(axaDomain);
    await AppStorage.instance.setUserId(userId);
    await AppStorage.instance.setAccessToken(accessToken);
    await AppStorage.instance.setTenantId(tenantId);
    await AppStorage.instance.setRefreshToken(refreshToken);
    await AppStorage.instance.setWorkflowBaseUrl(workflowBaseUrl);
    await AppStorage.instance.setWebWorkflowUrl(webWorkflowUrl);
    await AppStorage.instance.setRefcomBaseUrl(refcomBaseUrl);
    await AppStorage.instance.setIdentifyBaseUrl(identifyBaseUrl);
    await AppStorage.instance.setWebBaseUrl(webBaseUrl);
    await AppStorage.instance.setEngineerAutoId(engineerAutoId);
  }

  // setup config for token
  Future<void> setupAppConfigForToken({
    required String identifyBaseUrl,
    required String clientId,
    required String clientSecret,
    required String grantType,
    required String scope,
    required String refcomBaseUrl,
  }) async {
    await AppStorage.instance.setIdentifyBaseUrl(identifyBaseUrl);
    await AppStorage.instance.setClientId(clientId);
    await AppStorage.instance.setClientSecret(clientSecret);
    await AppStorage.instance.setGrantType(grantType);
    await AppStorage.instance.setScope(scope);
    await AppStorage.instance.setRefcomBaseUrl(refcomBaseUrl);
  }
}
