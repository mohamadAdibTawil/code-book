import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioException(DioException e) {
    switch (e.error) {
      case DioException.connectionError:
        return ServerFailure(message: 'connectionError Error');
      case DioException.connectionTimeout:
        return ServerFailure(message: 'connectionTimeout Error');
      case DioException.receiveTimeout:
        return ServerFailure(message: 'receiveTimeout Error');
      case DioException.sendTimeout:
        return ServerFailure(message: 'sendTimeout Error');
      case DioException.badResponse:
        return ServerFailure.formResponse(
            e.response!.statusCode!, e.response!.data!);
      case DioException.requestCancelled:
        return ServerFailure(message: 'requestCancelled Exception');
      default:
        return ServerFailure(message: 'defualt Error');
    }
  }
  factory ServerFailure.formResponse(int statusCode, dynamic response) {
    if (statusCode == 500) {
      return ServerFailure(message: 'there is problem with server');
    } else if (statusCode == 404) {
      return ServerFailure(message: 'your Request was not found');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
          message: 'Bad Requset $statusCode your response is:$response ');
    } else {
      return ServerFailure(message: 'unknown Error');
    }
  }
}
