import 'package:code_input/code_input.dart';
import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/Password/NewPassword.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'We have sent an OTP to\nyour Mobile',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                'Please check your mobile number 071*****12\ncontinue to reset your password',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xff7C7D7E),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 54,
              ),
              CodeInput(
                length: 4,
                keyboardType: TextInputType.number,
                builder: CodeInputBuilders.darkCircle(),
                onFilled: (value) => print('Your input is $value.'),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  navigatorTo(context: context, page: const NewPassword(),withHistory: false);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 56),
                  primary: const Color(0xffFC6011),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                //  Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text('Already have an Account?',
                //       style: TextStyle(
                //         fontSize: 14.0,
                //         color: Color(0xff7C7D7E),
                //       ),
                //     ),
                //     TextButton(onPressed: (){
                //       navigatorTo(context: context, page: LoginScreen(),withHistory: false);
                //     },
                //       child: const Text(
                //         'Login',
                //         style: TextStyle(
                //           color: Color(0xffFC6011),
                //           fontSize: 20.0,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),)
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
