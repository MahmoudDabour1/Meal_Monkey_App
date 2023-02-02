import 'package:flutter/material.dart';

class Button extends StatelessWidget implements PreferredSizeWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Find discounts, Offers special meals and more!',
            style: TextStyle(
              fontSize: 14.0,
            ),),
            const SizedBox(
              height: 22,
            ),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffFC6011),
                fixedSize: const Size(157, 29),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                )
              ),
                child: const Text(
                  'Check Offers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),

   ),
          ],
        ),
      ),
    );
  }

  @override

  Size get preferredSize => const Size.fromHeight(90.0);
}
