import 'package:dio/dio.dart';

extension FutureResponseExtension on Future<Response> {
  Future<(String, T?)> guard<T>(T Function(dynamic) parse) async {
    try {
      final response = await this;
      return ('', parse(response.data));
    } catch (e, stacktrace) {
      return (e.toString(), null);
    }
  }
}
