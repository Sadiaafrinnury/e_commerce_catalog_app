import 'package:e_commerce_app/Pages/cart_page.dart';
import 'package:e_commerce_app/Pages/login_page.dart';
import 'package:e_commerce_app/Widgets/themes.dart';
import 'package:e_commerce_app/home_page.dart';
import 'package:flutter/material.dart';

import 'Utils/routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      initialRoute: "MyRouts.homeRouts",
      routes: {
        "/": (context) => Loginpage(),
        MyRouts.homeRouts: (context) => Homepage(),
        MyRouts.loginRouts: (context) => Loginpage(),
        MyRouts.cartRouts: (context) => CartPage()
      },
    );
  }
}
