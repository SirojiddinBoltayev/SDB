import 'package:SDB/domain/handlers/token_interceptor.dart';
import 'package:dio/dio.dart';

import '../service/constants/secret_vars.dart';

class HttpService {
  Dio client({bool requireAuth = false}) => Dio(
        BaseOptions(
          baseUrl: SecretVars.baseUrl,
          connectTimeout: 60 * 1000,
          receiveTimeout: 60 * 1000,
          sendTimeout: 60 * 1000,
          headers: {
            'Accept': 'application/json',
            'Content-type': 'application/json'
          },
        ),
      )
        // ..interceptors.add(TokenInterceptor(requireAuth: requireAuth))
        ..interceptors.add(LogInterceptor(responseBody: true,requestBody: true));
}

// class ResponseLogInterceptor extends Interceptor {
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     // Faqat javobni konsolga chiqarish
//     print('*** Response ***');
//
//     print('uri: ${response.headers}');
//     print(response.data); // Bu javobning ma'lumotlari
//     handler.next(response);
//   }
// }
