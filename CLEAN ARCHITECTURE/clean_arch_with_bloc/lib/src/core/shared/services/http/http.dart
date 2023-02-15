// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class IHttpService {
  Future<MyResponse> get(String url);
}

class MyResponse {
  List<dynamic> data;
  int? statusCode;

  MyResponse({
    required this.data,
    required this.statusCode,
  });
}
