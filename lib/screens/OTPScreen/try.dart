import 'package:flutter/material.dart';
import 'package:code_input/code_input.dart';


class otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code input',
      color: Colors.deepOrange,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(child: _buildCodeInput())
      ),
    );
  }

  Widget _buildCodeInput() {
    return CodeInput(
      length: 4,
      keyboardType: TextInputType.number,
      builder: CodeInputBuilders.lightCircle(),
      spacing: 8,
      onFilled: (value) => print('Your input is $value.'),
      onDone: (value) => print('Your input is $value.'),
    );
  }
}