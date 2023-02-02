import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/Brief/Brief2.dart';
import 'package:flutter/material.dart';

class Brief1 extends StatelessWidget {
  const Brief1({Key? key}) : super(key: key);

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
              Image.asset('assets/images/Find food you love vector.png',
              width: 225.44,
              height: 295,),
              const SizedBox(
                height: 32.2,
              ),
              Image.asset('assets/images/Slider indicators.png',
              width: 34,
                height: 8,
              ),
              const SizedBox(
                height: 32.2,
              ),
              const Text(
                'Find Food You Love',
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
                'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff7C7D7E),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              ElevatedButton(onPressed: (){
                navigatorTo(context: context, page: const Brief2(),withHistory: false);
              },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffFC6011),
                  fixedSize: const Size(307, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                ),
                  child: const Text(
                    'Next',
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
