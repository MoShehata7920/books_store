import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with Api Server");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with Api Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with Api Server");

      case DioExceptionType.badCertificate:
        return ServerFailure(
            "There is Problem with Certificate, Please try later!");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure("Request To API server was cancelled");

      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");

      case DioExceptionType.unknown:
        return ServerFailure("Something went wrong, Please try again!");

      default:
        return ServerFailure("Something went wrong, Please try again!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request is Not Found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, Please try later!");
    } else {
      return ServerFailure("Oops there is an Error, Please try later!");
    }
  }
}
