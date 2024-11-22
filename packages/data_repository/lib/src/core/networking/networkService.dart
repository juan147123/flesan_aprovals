// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/foundation.dart';

import 'networkRequest.dart';
import 'networkResponse.dart';

class NetworkService {
  NetworkService({
    required this.baseUrl,
    dioClient,
    httpHeaders,
  })  : _dio = dioClient,
        _headers = httpHeaders ?? {};
  Dio? _dio;
  final String baseUrl;
  final Map<String, String> _headers;

  Dio _getDefaultDioClient() {
    _headers['content-type'] = 'application/json; charset=utf-8';
    final dio = Dio()
      ..interceptors.add(dioLoggerInterceptor)
      ..options.baseUrl = baseUrl
      ..options.headers = _headers
      ..options.connectTimeout = 1000000
      ..options.receiveTimeout = 1000000;

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    return dio;
  }

  void addBasicAuth(String accessToken) {
    _headers['Authorization'] = 'Bearer $accessToken';
  }

  Future<NetworkResponse<Model>> execute<Model>(
    NetworkRequest request,
    Model Function(Map<String, dynamic>) parser, {
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    _dio ??= _getDefaultDioClient();
    final req = _PreparedNetworkRequest<Model>(
      request,
      parser,
      _dio!,
      {..._headers, ...(request.headers ?? {})},
      onSendProgress,
      onReceiveProgress,
    );
    final result = await compute(
      executeRequest<Model>,
      req,
    );
    return result;
  }

  Future<NetworkResponse<Model>> executeRequest<Model>(
    _PreparedNetworkRequest request,
  ) async {
    try {
      dynamic body = request.request.data.whenOrNull(
        json: (data) => data,
        text: (data) => data,
      );
      final response = await request.dio.request(
        request.request.path,
        data: body,
        queryParameters: request.request.queryParams,
        options: Options(
          method: request.request.type.name,
          headers: request.headers,
        ),
        onSendProgress: request.onSendProgress,
        onReceiveProgress: request.onReceiveProgress,
      );
      return NetworkResponse.ok(request.parser(response.data));
    } on DioError catch (error) {
      var errorText = error.toString();
      if (error.response != null) {
        var dict = error.response!.data as Map<String, dynamic>;
        errorText = dict['error']['message'] as String;
      }

      if (error.requestOptions.cancelToken?.isCancelled ?? false) {
        return NetworkResponse.noData(errorText);
      }
      switch (error.response?.statusCode) {
        case 400:
          return NetworkResponse.badRequest(errorText);
        case 401:
          return NetworkResponse.noAuth(errorText);
        case 403:
          return NetworkResponse.noAccess(errorText);
        case 404:
          return NetworkResponse.notFound(errorText);
        case 409:
          return NetworkResponse.conflict(errorText);
        default:
          return NetworkResponse.noData(errorText);
      }
    } catch (error) {
      return NetworkResponse.noData(error.toString());
    }
  }
}

class _PreparedNetworkRequest<Model> {
  const _PreparedNetworkRequest(
    this.request,
    this.parser,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );
  final NetworkRequest request;
  final Model Function(Map<String, dynamic>) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}
