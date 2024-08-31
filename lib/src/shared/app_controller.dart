import "package:dio/dio.dart";

abstract base class AppController {
  const AppController(this.dio);
  final Dio dio;
}
