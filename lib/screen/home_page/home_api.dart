import 'package:api_demo/service/http_ser.dart';
import 'package:api_demo/utils/api_endpoint.dart';
import 'package:http/http.dart' as http;

import '../model/model_class.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: EndPointRes.productAPI);
      if (response != null && response.statusCode == 200) {
        return imagemodelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
