import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:yandhi/globals/config.dart';

class ChatHelper {
  static Future<String> chatPost(String message) async {
    Map<String, String> bodyContent = {
      "message": message,
    };
    final response = await http
        .post(Config.localhost, body: bodyContent)
        .timeout(Duration(seconds: 5), onTimeout: () {
      return null;
    });
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      throw Exception('Error retriving message.');
    }
  }
}
