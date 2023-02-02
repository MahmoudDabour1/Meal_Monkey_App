import 'package:flutter/material.dart';

class Search extends StatelessWidget implements PreferredSizeWidget{
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffF2F2F2),
          hintText: 'Search Food',
          hintStyle: const TextStyle(
            fontSize: 14.0,
            color: Color(0xffB6B7B7),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }

  @override
  
  Size get preferredSize => const Size.fromHeight(90.0);
}
