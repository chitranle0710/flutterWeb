import '../data/api/api_client/api_client.dart';
import '../data/api/api_client/api_client_type.dart';

mixin ClientModule {
  /// Base API/REST Client
  APIClientType get apiClient {
    return APIClient.apiClient();
  }

  /// Base API/REST Client
  APIClientType get identityApiClient {
    return APIClient.identifyApiClient();
  }
}
