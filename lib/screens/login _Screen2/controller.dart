// import 'package:dio/dio.dart';
// import 'package:engamrbakr/screens/login%20_Screen2/model.dart';
// import 'package:flutter/material.dart';
//
// class LoginController {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//
//   Future<UserData> Login() async {
//     final res = await Dio()
//         .post('https://transfer-me.wanderguide.net/api/users/login', data: {
//       'email': emailController.text,
//       "password": passwordController.text,
//       "type": "student",
//     });
//     print(res.data.toString());
//     final model = UserData.fromJson(res.data);
//     return model;
//   }
// }
