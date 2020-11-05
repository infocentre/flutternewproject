import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:temp/core/models/user.dart';

class Api {
  static const endpoint = 'https://jsonplaceholder.typicode.com';

  var client = new http.Client();

  Future<User> getUserProfile(int userId) async {
    // Get user profile for id
    var response = await client.get('$endpoint/users/$userId');
    print(response.body);
    // Convert and return
    return User.fromJson(json.decode(response.body));
  }
}
