import 'package:dio/dio.dart';
import '../../../generated/l10n.dart';
import 'interceptors.dart';

String errorDefaultMessage = S.current.anErrorOccurred;

class NetworkException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  NetworkException({required this.message, this.statusCode, this.data});
}

class HttpService {
  Dio? _dio;
  final String baseUrl;
  final bool hasAuthorization;
  final bool isFormType;

  HttpService({
    required this.baseUrl,
    this.hasAuthorization = false,
    this.isFormType = false,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    _interceptorsInit();
  }

  static const int timeoutDuration = 1;

  Future<T> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    required T Function(dynamic data) parser,
  }) async {
    try {
      final response = await _dio!
          .get(
            endpoint,
            queryParameters: queryParameters,
            cancelToken: cancelToken,
          )
          .timeout(const Duration(minutes: timeoutDuration));

      return _handleResponse(response, parser);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<T> post<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    required T Function(dynamic data) parser,
  }) async {
    try {
      final response = await _dio!
          .post(
            endpoint,
            data: data,
            queryParameters: queryParameters,
            cancelToken: cancelToken,
          )
          .timeout(const Duration(minutes: timeoutDuration));

      return _handleResponse(response, parser);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Response> put(
    urlEndpoint, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    response = await _dio!
        .put(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(const Duration(minutes: timeoutDuration));

    return response;
  }

  Future<Response> delete(
    urlEndpoint, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    response = await _dio!
        .delete(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(const Duration(minutes: timeoutDuration));

    return response;
  }

  Future<Response> patch(
    urlEndpoint, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    Response response;

    response = await _dio!
        .patch(urlEndpoint, data: data, queryParameters: queryParameters)
        .timeout(const Duration(minutes: timeoutDuration));

    return response;
  }

  _interceptorsInit() {
    _dio!.interceptors.add(
      HeaderInterceptor(
        hasToken: hasAuthorization,
        dio: _dio!,
        contentType: isFormType ? 'multipart/form-data' : 'application/json',
      ),
    );
  }

  T _handleResponse<T>(Response response, T Function(dynamic data) parser) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return parser(response.data);
    } else {
      throw NetworkException(
        message: response.statusMessage ?? errorDefaultMessage,
        statusCode: response.statusCode,
        data: response.data,
      );
    }
  }

  NetworkException _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException(message: S.current.pleaseTryAgain);

      case DioExceptionType.connectionError:
        return NetworkException(message: S.current.noInternetConnection);

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message = error.response?.data?["message"] ?? errorDefaultMessage;

        // if (statusCode == 401) {
        //   _handleUnauthorized();
        // }

        return NetworkException(
          message: statusCode == 500 ? errorDefaultMessage : message,
          statusCode: statusCode,
          data: error.response?.data,
        );

      case DioExceptionType.cancel:
        return NetworkException(message: S.current.requestCancelled);

      default:
        return NetworkException(message: errorDefaultMessage);
    }
  }
}
