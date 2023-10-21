import 'dart:developer';

import 'package:code_book/core/errors/failure.dart';
import 'package:dio/dio.dart';

class ApiServices {
 final Dio _dio;

  final baseUrl = "https://www.googleapis.com/books/v1/";
  ApiServices(this._dio);


  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
  var response = await _dio.get('$baseUrl$endPoint');
  log('ApiServices response ::: $response');
  log('ApiServices response.data ::: ${response.data}');
  
  return response.data;
}on DioException catch (e) {
 log('ApiServices errorDioException ::: $e');
  throw ServerFailure.fromDioException(e);
}
catch (e) {
 log('ApiServices error ::: $e');
  throw ServerFailure(message: e.toString());
}
  }
}
