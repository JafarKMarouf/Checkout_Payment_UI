import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseURL = 'https://api.stripe.com/v1/';
  Future<Map<String, dynamic>> post({
    required String endPoint,
    required body,
    String? token,
    String? contentType,
    Map<String, String>? headers,
  }) async {
    log('$_baseURL$endPoint');
    log('$body');
    var response = await _dio.post(
      '$_baseURL$endPoint',
      data: body,
      options: Options(
        contentType: contentType,
        headers: headers ?? {'Authorization': 'Bearer $token'},
      ),
    );
    log('$response');
    return response.data;
  }
}
