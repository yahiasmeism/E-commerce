import 'package:app/core/api/api_consumer.dart';
import 'package:dio/dio.dart';

import '../errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options = BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 3));
  }

  @override
  Future delete(String path,
      {data, Map<String, dynamic>? query, String? token}) async {
    try {
      return await dio.delete(
        path,
        queryParameters: query,
        data: data,
      );
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future get(String path, {Map<String, dynamic>? query, String? token}) async {
    try {
      Response response = await dio.get(
        path,
        queryParameters: query,
      );

      return response;
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future patch(String path,
      {data, Map<String, dynamic>? query, String? token}) async {
    try {
      return await dio.patch(
        path,
        queryParameters: query,
        data: data,
      );
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future post(String path,
      {data, Map<String, dynamic>? query, String? token}) async {
    try {
      return await dio.post(
        path,
        queryParameters: query,
        data: data,
      );
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future put(String path,
      {data, Map<String, dynamic>? query, String? token}) async {
    try {
      return await dio.put(
        path,
        queryParameters: query,
        data: data,
      );
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }
}
