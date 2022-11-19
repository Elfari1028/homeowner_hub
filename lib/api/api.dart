import 'package:dio/dio.dart';

class APICall {
  static const String domain = "next.cabin.com";
  static Dio client = Dio(BaseOptions(
      baseUrl: "http://" + domain + '/api',
      connectTimeout: 5000,
      receiveTimeout: 3000,
      extra: {'withCredentials': true}));

  static Future<Map> post(url, {Map? data}) async {
    try {
      Response response = await client.post(url, data: data);
      return response.data;
    } on DioError catch (e) {
      return Map.from({"success": false, "exc": e.type.toString()});
    } on Error catch (e) {
      return Map.from({"success": false, "exc": e.toString()});
    } catch (object) {
      return Map.from({"success": false, "exc": "未知错误"});
    }
  }

  static Future<Map> get(url, {Map<String, dynamic>? query}) async {
    try {
      Response response = await client.get(url, queryParameters: query);
      return response.data;
    } on DioError catch (e) {
      return Map.from({"success": false, "exc": e.type.toString()});
    } on Error catch (e) {
      return Map.from({"success": false, "exc": e.toString()});
    } catch (object) {
      return Map.from({"success": false, "exc": "未知错误"});
    }
  }

  //   /news
  // static Future<Map> getNews() async {
  //   Map data = await get('/news');
    
  // }
}
