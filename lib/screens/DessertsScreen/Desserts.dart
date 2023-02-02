import 'package:engamrbakr/componts/model.dart';
import 'package:engamrbakr/componts/sharch.dart';
import 'package:flutter/material.dart';

class Desserts extends StatelessWidget {
  final Product model;
  const Desserts({Key? key,  required this.model }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Desserts',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
            color: Color(0xff4A4B4D),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff4A4B4D),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_sharp,
            color: Color(0xff4A4B4D),
          ),
        ],
        bottom: const Search(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [



          ],
        ),
      ),
    );
  }
}
