import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;
  static Dio getDio() {
    Duration connectTimeout = const Duration(seconds: 5);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = connectTimeout
        ..options.receiveTimeout = connectTimeout;
      return dio!;
    }
    {
      return dio!;
    }
  }

  static void dioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        logPrint: print,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
      ),
    );
  }
}
