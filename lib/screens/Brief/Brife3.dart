import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/AfterSplash/afterSplash.dart';
import 'package:engamrbakr/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';

class Brife3 extends StatelessWidget {
  const Brife3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 112.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Live tracking vector.png',
                width: 225.44,
                height: 295,
              ),
              const SizedBox(
                height: 32.2,
              ),
              Image.asset(
                'assets/images/Slider indicators3.png',
                width: 34,
                height: 8,
              ),
              const SizedBox(
                height: 32.2,
              ),
              const Text(
                'Live Tracking',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(
                height: 33.2,
              ),
              const Text(
                'Real time tracking of your food on the app\nonce you placed the order',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff7C7D7E),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  CacheHelper.saveIfNotFirstTime();
                  navigatorTo(
                    context: context,
                    page: LoginScreen(),
                    withHistory: false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                child: const Text(
                  'Finish',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
