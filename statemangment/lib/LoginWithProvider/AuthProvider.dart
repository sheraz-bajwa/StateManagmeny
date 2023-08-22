import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthProvider with ChangeNotifier {
  Future<void> login(String email, String password) async {
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'));
      Body:
      {
        email:
        'email';

        password:
        'password';
      }

      if (response.statusCode == 200) {
        print('Succesfull!!!!!');
      } else {
        print('Error');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
