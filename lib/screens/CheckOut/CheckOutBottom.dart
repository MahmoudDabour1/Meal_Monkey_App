import 'package:flutter/material.dart';

class CheckOutBottom extends StatelessWidget implements PreferredSizeWidget
{
  const CheckOutBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Container(
        // color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery Address',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff7C7D7E),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text('653 Nostrand Ave.,\nBrooklyn, NY 11216',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A4B4D),
                ),

            ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: TextButton(onPressed: (){}, child: const Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFC6011),
                    ),
                  )),
                )
              ],
            ),


          ],

        ),
      ),
    );
  }
  @override

  Size get preferredSize => const Size.fromHeight(90.0);
}
