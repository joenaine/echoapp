import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:echoapp/core/constants/constant_variables.dart';
import 'package:echoapp/core/local_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@LazySingleton()
class DioHelper {
  Dio? _dio;

  DioHelper() {
    _dio = Dio(
      BaseOptions(
          baseUrl: 'https://echoapp.kz/api',
          connectTimeout: const Duration(seconds: 12),
          receiveTimeout: const Duration(seconds: 12),
          headers: {
            'Content-Type': 'application/json;charset=UTF-8',
            'Charset': 'utf-8',
          }),
    );
    _dio?.interceptors.add(PrettyDioLogger());

    _dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          String? accessToken = await LocalStorage.instance.get(accessTokenKey);
          log('Token: $accessToken');
          // String? accessToken =
          // 'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJNYXRoRWR1Y2F0b3JJc3N1ZXJJZCIsImV4cCI6MTcyMzExNDcwNCwiaWF0IjoxNzIwNjk1NTA0LCJpc3MiOiJNYXRoRWR1Y2F0b3JJc3N1ZXJJZCIsImp0aSI6IjdkZjk3ZDQ4LTk3ZjQtNDcxZS1iM2IzLTY1ZDI4ZjEyYzdkNCIsIm5iZiI6MTcyMDY5NTUwMywic3ViIjoiMTMzNDYwOSIsInR5cCI6ImFjY2VzcyJ9.dXENYwbNrqRj3dS81C7wn_cB9SUmzQWVNeBtLGPG468HhDt2uVz2enJneDqNT48TII3PtJPguVlxEqP6TreRgw';
          // Add the access token to every request
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Do something with the response
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          // Handle errors
          return handler.next(e);
        },
      ),
    );
  }

  Dio? get dio => _dio;

  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters, Map<String, dynamic>? data}) {
    return _dio!.get(path, queryParameters: queryParameters, data: data);
  }

  Future<Response> post(String path,
      {dynamic data, Map<String, dynamic>? query}) {
    return _dio!.post(path, data: data, queryParameters: query);
  }

  Future<Response> put(String path, {dynamic data}) {
    return _dio!.put(path, data: data);
  }

  Future<Response> delete(String path,
      {dynamic data, Map<String, dynamic>? query}) {
    return _dio!.delete(path, data: data, queryParameters: query);
  }
}

class DioErrorHelper {
  static void handleDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        log('Connection Timeout Exception');
        break;
      case DioExceptionType.sendTimeout:
        log('Send Timeout Exception');
        break;
      case DioExceptionType.receiveTimeout:
        log('Receive Timeout Exception');
        break;
      case DioExceptionType.badResponse:
        log('Response Exception: ${dioException.response?.data}');
        break;
      case DioExceptionType.cancel:
        log('Request Cancelled');
        break;
      case DioExceptionType.badCertificate:
        log('Bad Certificate Exception');
        break;
      case DioExceptionType.connectionError:
        log('Connection Error');
        break;
      case DioExceptionType.unknown:
      default:
        log('Unexpected Error: ${dioException.message}');
        break;
    }
  }
}
