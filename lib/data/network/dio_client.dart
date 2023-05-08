import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:video_streaming/data/network/network_constant.dart';

Dio createDefaultDioClient() {
  final dio = Dio();

  dio.options = BaseOptions(baseUrl: NetworkConstant.baseUrl);
  dio.interceptors.add(
    InterceptorsWrapper(
      onResponse: (response, handler) {
        if (response.requestOptions.method == HttpMethod.GET) {
          response.data = jsonDecode(response.data as String);
        }
        return handler.next(response);
      },
    ),
  );

  return dio;
}
