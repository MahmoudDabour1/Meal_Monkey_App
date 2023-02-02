// import 'package:engamrbakr/screens/login%20_Screen2/controller.dart';
// import 'package:flutter/material.dart';
//
// import '../loginScreen/controller.dart';
//
// class Login extends StatelessWidget {
//   Login({Key? key}) : super(key: key);
//   var controller = LoginController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: controller.emailController,
//               decoration: InputDecoration(
//                 label: Text('Email'),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: controller.passwordController,
//               decoration: InputDecoration(
//                 label: Text('Password'),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 controller.Login();
//               },
//               child: Text(
//                 'Login',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
