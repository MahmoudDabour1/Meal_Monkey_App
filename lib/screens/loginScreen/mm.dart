// import 'package:flutter/material.dart';
// import 'package:meal_monkey/constants/constants.dart';
// import 'package:meal_monkey/screens/home/home_page/view/view.dart';
//
// import '../forget_pass/view.dart';
// import '../signup/view.dart';
// import 'controller.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final controller = LoginController();
//
//   bool isLoading = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: SizedBox(
//             width: size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 defaultText(
//                     text: 'Login', fontSize: 35, fontWeight: FontWeight.w400),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 defaultText(
//                   text: 'Add your details to login',
//                   textColor: secTextColor,
//                   fontSize: 17,
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: defaultFormField(
//                       controller: controller.emailController,
//                       hintText: "   Your Email",
//                       textInputType: TextInputType.emailAddress),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                   child: defaultFormField(
//                       controller: controller.passwordController,
//                       hintText: "   Password",
//                       textInputType: TextInputType.text),
//                 ),
//                 const SizedBox(
//                   height: 28,
//                 ),
//                 isLoading ? const CircularProgressIndicator() : defaultButton(
//                     text: 'Login',
//                     press: () {
//                       isLoading = true;
//                       setState(() {});
//                       controller.login().then((value) {
//                         if (value) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const HomePage(),
//                               ));
//                         } else {
//                           isLoading = false;
//                           setState(() {});
//                           print("Login Failed");
//                         }
//                       });
//                     }),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const ForgetPassScreen()),
//                     );
//                   },
//                   child: defaultText(
//                     text: "Forgot your password?",
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 defaultText(
//                   text: 'or Login With',
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     primary: const Color(0xFF3B5998),
//                     elevation: 0.0,
//                     fixedSize: const Size(307, 56),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(28.0),
//                     ),
//                   ),
//                   onPressed: () {},
//                   icon: SizedBox(
//                     height: 12,
//                     width: 20,
//                     child: Image.asset(
//                       "assets/images/facebook_logo.png",
//                     ),
//                   ),
//                   label: defaultText(
//                       text: 'Login with Facebook',
//                       textColor: bgColor,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ElevatedButton.icon(
//                   style: ElevatedButton.styleFrom(
//                     primary: const Color(0xFFDB4A39),
//                     elevation: 0.0,
//                     fixedSize: const Size(307, 56),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(28.0),
//                     ),
//                   ),
//                   onPressed: () {},
//                   icon: SizedBox(
//                     height: 12,
//                     width: 20,
//                     child: Image.asset(
//                       "assets/images/google-logo.png",
//                     ),
//                   ),
//                   label: defaultText(
//                       text: 'Login with Google',
//                       textColor: bgColor,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     defaultText(
//                         text: 'Don\'t have an Account?',
//                         textColor: secTextColor),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const SignupScreen()),
//                         );
//                       },
//                       child: defaultText(
//                         text: "Sign UP",
//                         textColor: mainColor,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
