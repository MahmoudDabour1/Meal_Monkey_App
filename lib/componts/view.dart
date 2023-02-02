import 'package:engamrbakr/componts/Item_pizza.dart';
import 'package:engamrbakr/componts/controller.dart';
import 'package:engamrbakr/componts/itemBottonBar.dart';
import 'package:engamrbakr/componts/sharch.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  final controller = StackController();

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
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 40.0),
        itemBuilder: (context, index) =>
            Itempizza(model: controller.Products[index]),
        itemCount: controller.Products.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedItmes =4;
          setState((){});
        },
        backgroundColor:controller.selectedItmes==4? const Color(0xffFC6011):const Color(0xffB6B7B7),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15.0,
          child: Row(
              children: List.generate(
            controller.titles.length,
            (index) => ItemButtonbar(
              isSelected: index == controller.selectedItmes,
              onPress: () {
                print(index);
                controller.selectedItmes = index;
                setState((){});
              },
              name: controller.titles[index],
              icon: controller.icons[index],
            ),
          )),
        ),
      ),
    );
  }
}
