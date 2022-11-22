/// Generated By XFlutter Cli.
///

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:livedata_app/controllers/authentication_controller.dart';
import 'logging_interceptor.dart';

/// Config Http Options
Future<void> httpConfig() async {
  await _httpClientConfig();
}

/// Config Http globally
///
/// Add "Authorization" in header to every request sent,
///
/// Add Log on console for see (Request/Response) details.
_httpClientConfig() {
  GetIt.I.registerSingleton<Dio>(Dio()
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          final headers = {
            'Accept': 'application/json',
            'format': 'json',
            'Authorization': 'Bearer ${await AuthenticationController.token()}',
          };
          request.headers.addAll(headers);
          request.connectTimeout = 60000;
          request.receiveTimeout = 60000;
          handler.next(request);
        },
        onError: (error, handler) {
          handler.next(error);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
      ),
    )
    ..interceptors.add(LoggingInterceptor()));
}
