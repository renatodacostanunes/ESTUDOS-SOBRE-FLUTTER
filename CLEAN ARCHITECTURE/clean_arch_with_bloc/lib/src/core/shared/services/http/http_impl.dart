import 'dart:convert';

import 'package:clean_arch_with_bloc/src/core/shared/services/http/http.dart';
import 'package:http/http.dart' as http;

class HttpImpl extends IHttpService {
  @override
  Future<MyResponse> get(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    return MyResponse(data: jsonDecode(response.body), statusCode: response.statusCode);
  }
}
