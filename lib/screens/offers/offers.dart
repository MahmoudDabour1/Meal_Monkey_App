//
// import 'package:flutter/material.dart';
//
// import '../../componts/controller.dart';
// import '../../componts/itemBottonBar.dart';
// import '../../componts/offers2.dart';
// import '../../componts/offers_Botton.dart';
// class Offers extends StatefulWidget {
//   const Offers({Key? key}) : super(key: key);
//
//   @override
//   State<Offers> createState() => _OffersState();
// }
//
// class _OffersState extends State<Offers> {
//   final controller = StackController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.white,
//         title: const Text('Latest Offers',
//         style: TextStyle(
//           fontSize: 24.0,
//           fontWeight: FontWeight.w400,
//           color: Color(0xff4A4B4D),
//         ),
//         ),
//         actions: [
//           IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,
//           color:Color(0xff4A4B4D) ,
//           ),
//           ),
//         ],
//           bottom: const Button(),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(bottom: 40),
//         child: SingleChildScrollView(
//           child: Column(
//             children: const [
//               Data(
//                 imageurl:'assets/images/16.png' ,
//                 name: 'Isso',
//               ),
//               SizedBox(
//                 height: 26.8,
//               ),
//               Data(
//                 imageurl:'assets/images/17.png',
//                 name: 'Isso',
//               ),
//               SizedBox(
//                 height: 26.8,
//               ),
//               Data(
//                 imageurl: 'assets/images/18.png',
//                 name: 'Cafe Beans',
//               ),
//               SizedBox(
//                 height: 26.8,
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           controller.selectedItmes =4;
//           setState((){});
//         },
//         backgroundColor:controller.selectedItmes==4? const Color(0xffFC6011):const Color(0xffB6B7B7),
//         child: const Icon(Icons.home),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: SizedBox(
//         height: 70.0,
//         child: BottomAppBar(
//           color: Colors.white,
//           shape: const CircularNotchedRectangle(),
//           notchMargin: 15.0,
//           child: Row(
//               children: List.generate(
//                 controller.titles.length,
//                     (index) => ItemButtonbar(
//                   isSelected: index == controller.selectedItmes,
//                   onPress: () {
//                     print(index);
//                     controller.selectedItmes = index;
//                     setState((){});
//                   },
//                   name: controller.titles[index],
//                   icon: controller.icons[index],
//                 ),
//               )),
//         ),
//       ),
//
//     );
//   }
// }
