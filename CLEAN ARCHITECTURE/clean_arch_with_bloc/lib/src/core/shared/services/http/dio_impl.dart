import 'package:clean_arch_with_bloc/src/core/shared/services/http/http.dart';
import 'package:dio/dio.dart';

class DioImpl extends IHttpService {
  final Dio dio = Dio();

  @override
  Future<MyResponse> get(String url) async {
    Response response = await dio.get(url);
    return MyResponse(data: response.data, statusCode: response.statusCode);
  }
}
