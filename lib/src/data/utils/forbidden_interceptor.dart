import 'package:dio/dio.dart';

class ForbiddenInterceptor extends Interceptor {
  ForbiddenInterceptor({
    required this.action,
  });

  final Future<void> Function() action;

  @override
  Future<void> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.type == DioErrorType.response && err.response!.statusCode == 401) {
      await action();
    }
    handler.next(err);
  }
}
