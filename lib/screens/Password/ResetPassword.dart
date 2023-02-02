import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/OTPScreen/OTPScreen.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
                'Reset Password',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(height: 12.0,),
              const Text('Please enter your email to receive a\nlink to  create a new password via email',
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff7C7D7E),
              ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      hintText: '        Email',
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Color(0xffB6B7B7),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        borderSide: BorderSide.none,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 34,),
              ElevatedButton(onPressed: (){
                navigatorTo(context: context, page: const OtpScreen(),withHistory: false);
              },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 56),
                  primary: const Color(0xffFC6011),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                child: const Text(
                  'Send',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffFFFFFF),

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
