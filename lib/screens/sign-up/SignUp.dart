import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4A4B4D),
                  ),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                const Text(
                  'Add your details to sign up',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff7C7D7E),
                  ),
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      hintText: '        Name',
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
                const SizedBox(
                  height:28.0 ,
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
                const SizedBox(
                  height:28.0 ,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF2F2F2),
                        hintText: '        Mobile No',
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
                const SizedBox(
                  height:28.0 ,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF2F2F2),
                        hintText: '        Address',
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
                const SizedBox(
                  height:28.0 ,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF2F2F2),
                        hintText: '        Password',
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
                const SizedBox(
                  height:28.0 ,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF2F2F2),
                        hintText: '        Confirm Password',
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
                const SizedBox(
                  height:28.0 ,
                ),
                ElevatedButton(onPressed: (){
                  navigatorTo(context: context, page:  LoginScreen(),withHistory: false);
                },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(307, 56),
                    primary: const Color(0xffFC6011),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xffFFFFFF),

                      ),
                    ),

                ),
                const SizedBox(height: 24.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account?',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff7C7D7E),
                      ),
                    ),
                   TextButton(onPressed: (){
                     navigatorTo(context: context, page:  LoginScreen(),withHistory: false);
                   },
                       child: const Text(
                         'Login',
                         style: TextStyle(
                           color: Color(0xffFC6011),
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
