import 'package:dio/dio.dart';

import 'api_client_type.dart';
import 'interceptor/base_query_interceptor.dart';
import 'interceptor/curl_log.dart';
import 'interceptor/identity_query_interceptor.dart';

class APIClient {
  static APIClientType apiClient({
    bool disableRequestBodyLogging = false,
    bool ignoreToken = false,
    bool ignoreConnection = false,
  }) {
    final dio = Dio();
    dio.interceptors.add(CurlLogInterceptor());
    dio.interceptors.add(BaseQueryInterceptor(
      dio: dio,
      ignoreConnection: ignoreConnection,
      ignoreToken: ignoreToken,
    ));
    return APIClientType(dio, baseUrl: '');
  }

  /// Identity Client.
  static APIClientType identifyApiClient({
    bool disableRequestBodyLogging = false,
    bool ignoreToken = false,
    bool ignoreConnection = false,
  }) {
    final dio = Dio();
    dio.interceptors.add(CurlLogInterceptor());
    dio.interceptors.add(IdentityQueryInterceptor(
      ignoreConnection: ignoreConnection,
      ignoreToken: ignoreToken,
    ));
    return APIClientType(dio, baseUrl: '');
  }
}
