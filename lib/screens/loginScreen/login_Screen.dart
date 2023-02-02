import 'dart:developer';

import 'package:engamrbakr/componts/view.dart';
import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/Password/ResetPassword.dart';
import 'package:engamrbakr/screens/login%20_Screen2/Login.dart';
import 'package:engamrbakr/screens/login%20_Screen2/Login.dart';
import 'package:engamrbakr/screens/loginScreen/Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Packge/OnBording1.dart';
import '../Brief/Brief1.dart';
import '../Profile/Profile.dart';
import '../login _Screen2/Login.dart';
import '../login _Screen2/Login.dart';
import '../login _Screen2/Login.dart';
import '../login _Screen2/Login.dart';
import '../login _Screen2/Login.dart';
import '../login _Screen2/controller.dart';
import '../sign-up/SignUp.dart';
import 'controller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = LoginController1();
  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                'Add your details to login',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: TextFormField(
                  controller: controller.EmailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F2F2),
                    hintText: 'Your Email',
                    hintStyle: const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xffB6B7B7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        28.0,
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: controller.PasswordController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Color(0xffB6B7B7),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(28.0),
                      )),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              isLoding
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        isLoding = true;
                        setState(() {});
                        controller.login().then((value) async {
                          if (value) {
                            await CacheHelper.saveToken(value.data.user.rememberToken);
                            await CacheHelper.saveName(value.data.user.userName);
                            await CacheHelper.saveFullName(value.data.user.fullName);
                            await CacheHelper.saveEmail(value.data.user.email);
                            await CacheHelper.saveImage(value.data.user.image);
                            await CacheHelper.savePhone(value.data.user.phone);
                            await CacheHelper.saveId(value.data.user.id);
                            navigatorTo(
                              context: context,
                              page: Brief1(),
                              withHistory: false,
                            );
                          } else {
                            isLoding = false;
                            setState(() {});
                            print('False');
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(307, 56),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0))),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
              const SizedBox(
                height: 24.0,
              ),
              TextButton(
                onPressed: () {
                  navigatorTo(
                      context: context,
                      page: const ResetPassword(),
                      withHistory: false);
                },
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff7C7D7E),
                  ),
                ),
              ),
              const SizedBox(
                height: 49.0,
              ),
              const Text(
                'or Login With',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff7C7D7E),
                ),
              ),
              const SizedBox(
                height: 27.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff367FC0),
                  fixedSize: const Size(315, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      28.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/facebook-letter-logo.png',
                      width: 19.22,
                      height: 12.01,
                    ),
                    const SizedBox(
                      width: 33.0,
                    ),
                    const Text(
                      'Login with Facebook',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffDD4B39),
                  fixedSize: const Size(315, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/google-plus-logo.png',
                      width: 19.22,
                      height: 12.01,
                    ),
                    const SizedBox(
                      width: 33.0,
                    ),
                    const Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
