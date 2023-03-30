import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:social_android/Models/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostService {
  // static var client = http.Client();
  // static Future<List<PostModel>> fetchPosts() async {
  //   try {
  //     var response =
  //         await http.get(Uri.parse('http://192.168.1.22:8000/api/fetch-post'));
  //     if (response.statusCode == 200) {
  //       List<PostModel> postmodel =
  //           json.decode(response.body).cast<Map<String, dynamic>>();
  //       postmodel = postmodelFromJson(response.body).toList();

  //       return postmodel;
  //     } else {
  //       return jsonDecode(response.body);
  //     }
  //   } catch (e) {
  //     return jsonDecode(e.toString());
  //   }
  // }

  static Future<List<PostModel>> fetchPosts() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");

      var response = await http.get(
        Uri.parse('http://192.168.1.22:8000/api/fetch-post'),
        headers: <String, String>{
          'Content-Type': 'charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
          "Connection": "Keep-Alive",
          "Keep-Alive": "timeout=5, max=1000"
        },
      );

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
