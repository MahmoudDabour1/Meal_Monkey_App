import 'package:flutter/material.dart';

class ItemButtonbar extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onPress;
   final bool isSelected;
  const ItemButtonbar({Key? key, required this.name, required this.icon, required this.onPress, required this.isSelected,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          IconButton(
            onPressed: () {
            },
            icon: Icon(icon ,color: isSelected?const Color(0xffFC6011):const Color(0xffB6B7B7),),
            ),
          Text(name, style: TextStyle(
            color: isSelected?const Color(0xffFC6011):const Color(0xffB6B7B7),
          ),
          )
        ],
    ),
      ),
    );
  }
}
//