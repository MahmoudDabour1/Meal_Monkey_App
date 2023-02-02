import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String name;
  TextEditingController Controller = TextEditingController();

  bool isShow = false;

  TextForm({
    Key? key,
    required this.name,
    required this.isShow,
    required this.Controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: TextFormField(
          controller: Controller,
          obscuringCharacter: '*',
          obscureText: isShow,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF2F2F2),
            labelText: name,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            labelStyle: const TextStyle(
              fontSize: 15.0,
              height: 5,
              color: Color(0xffB6B7B7),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
