
import 'package:dio/dio.dart';
import 'package:engamrbakr/screens/login%20_Screen2/model.dart';
import 'package:flutter/material.dart';

import 'Model.dart';


class LoginController1 {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();

  Future<bool> login() async {
    final rest = await Dio()
        .post('https://transfer-me.wanderguide.net/api/users/login', data: {
      'email': EmailController.text,
      'password': PasswordController.text,
      "type": "student",
    });
    print(rest.data.toString());
    final Model = UserData.fromJson(rest.data);
    return Model.status;
  }
}
