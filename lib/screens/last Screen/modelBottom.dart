import 'package:flutter/material.dart';

class BottomModel extends StatefulWidget implements PreferredSizeWidget {
  const BottomModel({Key? key}) : super(key: key);

  @override
  State<BottomModel> createState() => _BottomModelState();

  @override
  Size get preferredSize =>  const Size.fromHeight(1000.0);
}

class _BottomModelState extends State<BottomModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Image.asset('assets/images/20.png',
              width:200.5 ,
              height:150.28 ,
              ),
              const SizedBox(
                height: 25.7,
              ),
              const Text(
                'Thank You!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'for your order',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              const Text(
                'Your Order is now being processed. We will let you\n know once the order is picked from the outlet.\n                  Check the status of your Order',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff4A4B4D),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 56),
                  primary: const Color(0xffFC6011),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  'Track My Order',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              TextButton(onPressed: (){},
                  child: const Text(
                    'Back To Home',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff4A4B4D),
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
