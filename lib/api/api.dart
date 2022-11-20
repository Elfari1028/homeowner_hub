import 'package:dio/dio.dart';
import 'package:homeowner_hub/utils/usage_cal.dart';

class APICall {
  static const String domain = "192.168.43.52:8000";
  static Dio client = Dio(BaseOptions(
      baseUrl: "http://" + domain + '',
      connectTimeout: 5000,
      receiveTimeout: 3000,
      extra: {'withCredentials': true}));

  static Future<dynamic> post(url, {Map? data}) async {
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

  static Future<dynamic> get(url, {Map<String, dynamic>? query}) async {
    try {
      Response response =
          await client.get(url, queryParameters: {...?query, "user_id": 0});
      return response.data;
    } on DioError catch (e) {
      return Map.from(
          {"success": false, "exc": e.type.toString(), "msg": e.message});
    } on Error catch (e) {
      return Map.from({"success": false, "exc": e.toString()});
    } catch (object) {
      return Map.from({"success": false, "exc": "未知错误"});
    }
  }

  static getSaveNum() async {
    Map? results =
        await post("/savings/show_prices", data: {"period": "month"});
    // "money_saved" "normal_bill" "eco_bill"
    EnergyUsageUtil.moneySaved = results?["money_saved"] ?? 12;
  }
}
