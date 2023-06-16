import 'package:http/http.dart' as http;

///**************************   Get API ****************************
class HttpService {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      print("url ===> $url");
      return await http.get(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }

  ///****************************    Post API    ****************************
  static Future<http.Response?> postapi(
      {required String url, Map<String, dynamic>? body}) async {
    try {
      print("url ===> $url");
      return await http.post(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
