import 'dart:convert';
import 'package:diagnose_me/app/app_constants.dart';
import 'package:http/http.dart' as http;

class UserAuth {
  static getCurrentUserProfile() async {
    final response = await http
        .get(
      Uri.parse(AppConstants.userProfile),
    )
        .then((response) {
          Map<String,String> headers={'':''};
      Map<String, dynamic> decoded = {};

      if (response.statusCode == 200) {
        // The request was successful.
        return json.decode(response.body);
      } else {
        // The request failed.
        throw Exception('Failed to get current user profile');
      }
    });
  }

  static getUsers() async {
    final response = await http
        .get(Uri.parse(AppConstants.listUser))
        .then((http.Response response) {
      Map<String, dynamic> decoded = {};
      if (response.statusCode == 200) {
        // The request was successful.
        return json.decode(response.body)['users'];
      } else {
        // The request failed.
        throw Exception('Failed to get users');
      }
    });
  }

  static createUserAccount(String name, String email, String password) async {
    final response = await http
        .post(Uri.parse(AppConstants.createAccount),
            body: json
                .encode({'name': name, 'email': email, 'password': password}))
        .then((http.Response response) async {
      Map<String, dynamic> decoded = {};
      if (response.statusCode == 201) {
        decoded = json.decode(response.body);
        // The request was successful.
        return json.decode(response.body);
      } else {
        // The request failed.
        throw Exception('Failed to create user account');
      }
    });
  }

  static updateUserProfile(String id, String name, String email) async {
    final response = await http.put(
        Uri.parse(AppConstants.updateUserProfile),
        body: {'name': name, 'email': email}).then((http.Response response) {
      Map<String, dynamic> decoded = {};
      if (response.statusCode == 200) {
        // The request was successful.
        return json.decode(response.body);
      } else {
        // The request failed.
        throw Exception('Failed to update user profile');
      }
    });
  }
}
