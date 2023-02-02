import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:engamrbakr/core/helper_methods.dart';
import 'package:engamrbakr/screens/AfterSplash/afterSplash.dart';
import 'package:engamrbakr/screens/DessertsScreen/Desserts.dart';
import 'package:engamrbakr/screens/counter/CounterScreen.dart';
import 'package:engamrbakr/screens/loginScreen/login_Screen.dart';
import 'package:flutter/material.dart';
import 'componts/Item_pizza.dart';
import 'componts/view.dart';
import 'screens/Splash/Splash.dart';
import 'screens/connectToFireBase/firebase.dart';
import 'screens/login _Screen2/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
      // CacheHelper.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Meal Monkey',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
