import 'package:engamrbakr/componts/controller.dart';
import 'package:flutter/material.dart';

import '../../componts/itemBottonBar.dart';
import '../last Screen/modelBottom.dart';
import 'CheckOutBottom.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool IsOn = false;
  bool IsOn1 = false;
  bool IsOn2 = false;
  final controller = StackController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(
              0xff4A4B4D,
            ),
          ),
          title: const Text(
            'Checkout',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color(0xff4A4B4D),
            ),
          ),
          bottom: const CheckOutBottom()),
      backgroundColor: const Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Row(
                    children: [
                      const Text(
                        'Payment method',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7C7D7E),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          label: const Text(
                            'Add Card',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFC6011)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: Container(
                          color: const Color(0xffF6F6F6),
                          child: CheckboxListTile(
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: const BorderSide(
                                  color: Color(0xffEE5A30),
                                )),
                            checkColor: Colors.orange,
                            contentPadding:
                                const EdgeInsets.only(left: 21, right: 12),
                            title: Row(
                              children: const [
                                Text(
                                  'Cash on delivery',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff2D2D2D),
                                  ),
                                ),
                              ],
                            ),
                            value: IsOn,
                            onChanged: (value) {
                              IsOn = value!;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: Container(
                          color: const Color(0xffF6F6F6),
                          child: CheckboxListTile(
                            secondary: Image.asset(
                              'assets/images/visa.png',
                              width: 37,
                              height: 22,
                            ),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: const BorderSide(
                                  color: Color(0xffEE5A30),
                                )),
                            checkColor: Colors.orange,
                            contentPadding:
                                const EdgeInsets.only(left: 21, right: 12),
                            title: Row(
                              children: const [
                                Text(
                                  '**** **** **** 2187',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff2D2D2D),
                                  ),
                                ),
                              ],
                            ),
                            value: IsOn1,
                            onChanged: (value) {
                              IsOn1 = value!;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: Container(
                          color: const Color(0xffF6F6F6),
                          child: CheckboxListTile(
                            secondary: Image.asset(
                              'assets/images/paypall.png',
                              width: 37,
                              height: 22,
                            ),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            checkboxShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                                side: const BorderSide(
                                  color: Color(0xffEE5A30),
                                )),
                            checkColor: Colors.orange,
                            contentPadding:
                                const EdgeInsets.only(left: 21, right: 12),
                            title: Row(
                              children: const [
                                Text(
                                  'johndoe@email.com',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff2D2D2D),
                                  ),
                                ),
                              ],
                            ),
                            value: IsOn2,
                            onChanged: (value) {
                              IsOn2 = value!;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const SizedBox(
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Row(
                        children: const [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 270),
                            child: Text(
                              "&68",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Row(
                        children: const [
                          Text(
                            'Delivery Cost',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 250),
                            child: Text(
                              "&2",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Row(
                        children: const [
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 270),
                            child: Text(
                              "-&4",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21),
                      child: Row(
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 290),
                            child: Text(
                              "-&66",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4A4B4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 37),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18),
                                ),
                              ),
                              context: context,
                              builder: (Context) {
                                return const BottomModel();
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(320, 56),
                          primary: const Color(0xffFC6011),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: const Text(
                          'Send Order',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.selectedItmes = 4;
          setState(() {});
        },
        backgroundColor: controller.selectedItmes == 4
            ? const Color(0xffFC6011)
            : const Color(0xffB6B7B7),
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
                  setState(() {});
                },
                name: controller.titles[index],
                icon: controller.icons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
