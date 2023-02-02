// import 'package:flutter/material.dart';
//
// class Data extends StatelessWidget {
//   final String imageurl;
//   final String name;
//    const Data ({Key? key, required this.imageurl, required this.name}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset(imageurl,
//           width: 375,
//           height: 193,
//         ),
//         const SizedBox(
//           height: 2,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 21),
//           child: Text(name,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 21),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: const [
//               Icon(
//                 Icons.star,
//                 color: Color(0xffFC6011),
//                 size: 15.0,
//               ),
//               SizedBox(
//                 width: 4.2,
//               ),
//               Text(
//                 '4.9',
//                 style: TextStyle(
//                   fontSize: 12.0,
//                   color: Color(0xffFC6011),
//                 ),
//               ),
//               Text(
//                 '(124 ratings) Café',
//                 style: TextStyle(
//                   fontSize: 12.0,
//                   color: Color(0xffB6B7B7),
//                 ),
//               ),
//               SizedBox(
//                 width: 10.0,
//               ),
//               CircleAvatar(
//                 maxRadius: 2.0,
//                 backgroundColor: Color(0xffFC6011),
//               ),
//               Text(
//                 'Western Food',
//                 style: TextStyle(
//                   fontSize: 12.0,
//                   color: Color(0xffB6B7B7),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
