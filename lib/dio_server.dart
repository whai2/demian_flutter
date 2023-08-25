import 'package:dio/dio.dart';

const _API_PREFIX = "http://10.0.2.2:8000/post/";

class Server {
  Future<void> getReq() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(_API_PREFIX); //모든 포스트 가져옴 (/1은 1만)
    print(response.data.toString());
  }

  Future<void> postReq() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.post(_API_PREFIX, data:{"id":12,"name":"hello"}); 
    print(response.data.toString());
  }

  Future<void> getReqWZQuery() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get(_API_PREFIX, queryParameters:{"userid":1,"id":"3",}); 
    print(response.data.toString());
  }
}