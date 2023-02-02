import 'dart:async';

import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/Brief/Brief1.dart';
import 'package:engamrbakr/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';

import '../../componts/view.dart';
import '../DessertsScreen/Desserts.dart';
import '../Profile/Profile.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      bool isFirstTime = CacheHelper.getIfFirstTime();
      navigatorTo(
          context: context,
          page: isFirstTime
              ? Brief1()
              : CacheHelper.getToken().isEmpty
                  ? LoginScreen()
                  : Profile(),
          withHistory: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Background icons.png"),
        )),
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/Monkey face.png'),
                height: 105,
                width: 104,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Meal',
                    style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Monkey',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4A4B4D),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Food Delivery'.toUpperCase(),
                style: const TextStyle(fontSize: 10.0, letterSpacing: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
