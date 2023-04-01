import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:social_android/Models/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostService {
  static Future<List<PostModel>> fetchPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");

      var response = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/fetch-post'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Connection": "Keep-Alive",
          "Keep-Alive": "timeout=5, max=1000",
          //
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      // print(["LOG", response.body]);
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
        return parsed
            .map<PostModel>((json) => PostModel.fromJson(json))
            .toList();
      } else {
        return jsonDecode(response.body);
      }
    } catch (e) {
      return jsonDecode(e.toString());
    }
  }
}
