import 'package:dio/dio.dart';

import '../../../../di/config_module.dart';

class IdentityQueryInterceptor extends InterceptorsWrapper with ConfigModule {
  static const _contentType = 'content-type';
  static const _applicationJson = 'application/json';

  String get baseDomain => appConfig.baseDomain;
  final bool expectResponseJson;
  final bool ignoreToken;
  final bool ignoreConnection;

  IdentityQueryInterceptor({
    this.expectResponseJson = false,
    this.ignoreConnection = false,
    this.ignoreToken = false,
  });

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (!ignoreToken) {
      options.headers.addAll(
          <String, String>{_contentType: 'application/x-www-form-urlencoded'});
    }
    return super.onRequest(options.copyWith(baseUrl: baseDomain), handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    final isInValidAuthenticationResponse =
        await _isInValidAuthenticationResponse(response);
    if (isInValidAuthenticationResponse) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
        error:
            'Invalid token or current token is expired. Please try logging in again!',
      );
    }
    if (!isResponseOkButNoContent(response) && expectResponseJson) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
        error: 'Response format is not a json response',
      );
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    var isInValidAuthentication = err.response?.statusCode == 401;
    if (isInValidAuthentication) {
      _sessionExpired();
    }
    return super.onError(err, handler);
  }

  Future<bool> _isInValidAuthenticationResponse(Response? response) async {
    return response?.statusCode == 401 || response?.statusCode == 403;
  }

  bool isResponseOkButNoContent(Response response) =>
      response.statusCode == 204;

  bool? isResponseHeaderTypeJson(Map<String, List<String>> headerMap) {
    return headerMap[_contentType]
        ?.firstWhere((element) => element.contains(_applicationJson),
            orElse: () => '')
        .contains(_applicationJson);
  }

  Future _sessionExpired() async {}
}
