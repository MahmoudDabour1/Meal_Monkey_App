import 'package:engamrbakr/componts/model.dart';
import 'package:flutter/material.dart';

class StackController
{
  int selectedItmes =0;
  List<String> titles =['Menu','Offers','Profile', 'More',];
  List<IconData> icons =[Icons.menu,Icons.shopping_bag_outlined,Icons.account_circle,Icons.menu_open_rounded,];

  List<Product> Products=
[
  Product(name:"French Apple Pie" ,category: "Desserts",description:"Minute by tuk tuk" ,rate:4.9 ,imageUrl:"assets/images/Component 9 – 1.png" ),
  Product(name:"Dark Chocolate Cake" ,category: "Desserts",description:"Cakes by Tella" ,rate:4.8 ,imageUrl:"assets/images/max-panama-AWFYboL6BE4-unsplash.png" ),
  Product(name:"Street Shake" ,category: "Desserts",description:"Café Racer" ,rate:4.7 ,imageUrl:"assets/images/muhammad-usman-OSpvTwWvjmU-unsplash.png" ),
  Product(name:"Fudgy Chewy Brownies" ,category: "Desserts",description:"Minute by tuk tuk" ,rate: 4.9,imageUrl:"assets/images/Component 9 – 4.png" ),


];

}
