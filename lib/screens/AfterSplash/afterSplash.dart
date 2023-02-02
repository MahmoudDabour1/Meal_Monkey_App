import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/loginScreen/login_Screen.dart';
import 'package:engamrbakr/screens/sign-up/SignUp.dart';
import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 499,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Organe top shape.png',
                      height: 406,
                      width: double.infinity,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/Monkey face.png',
                            width: 103.11,
                            height: 105.1,
                          ),
                          const SizedBox(height: 13.9,),
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                            Text(
                              'Meal',
                              style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFC6011),
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
                          ]),
                          Text(
                            'Food Delivery'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10.0,
                              letterSpacing: 3,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 44.0,
              ),
              const Text(
                'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff7C7D7E),

                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 36,
              ),
              ElevatedButton(onPressed: (){
                navigatorTo(context: context, page:  LoginScreen(),withHistory: false);
              },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(307, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                  child: const Text("Login",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton(onPressed: ()
              {
                navigatorTo(context: context, page: const SignUp(),withHistory: false);
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(307, 56),
                side: const BorderSide(
                  color: Color(0xffFC6011),
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
              ),
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(
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
