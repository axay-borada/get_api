import 'package:http/http.dart' as http;

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
}
