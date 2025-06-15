import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../config/app_configs.dart';
import 'package:{{name.snakeCase()}}/shared/router/router.dart';
import '../../utils/storage.dart';

enum HeaderContentType { formType, jsonType }

class HeaderInterceptor extends Interceptor {
  final bool hasToken;
  final Dio dio;
  final String contentType;

  HeaderInterceptor({
    required this.hasToken,
    required this.dio,
    required this.contentType,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (hasToken) {
      final token = await UserTokenManager.getAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    options.headers['Content-Type'] = contentType;
    options.headers['Accept'] = 'application/json';

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('DioResponse api: ${response.realUri.toString()}');
    debugPrint(
      'DioResponse payload: ${jsonEncode(response.requestOptions.data)}',
    );
    debugPrint('DioResponse response: ${jsonEncode(response.data)}');
    debugPrint('DioResponse-----------------------------------------------');
    debugPrint('DioResponse-----------------------------------------------');
    super.onResponse(response, handler);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      'DioException: ${err.response?.realUri.toString()} ${err.response?.statusCode}',
    );
    debugPrint('DioException: ${jsonEncode(err.requestOptions.data)}');
    debugPrint('DioException: ${jsonEncode(err.response?.data)}');
    debugPrint('DioException-----------------------------------------------');
    debugPrint('DioException-----------------------------------------------');
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      // _handleUnauthorized();
    }

    super.onError(err, handler);
  }

  void _handleUnauthorized() {
    UserTokenManager.deleteAccessToken();
    LocalStorageUtils.delete(AppConstants.userObject);

    AppRouter().pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
  }
}
