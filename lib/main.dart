import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shopping_cart/screens/HomeScreen.dart';

void main(){
  runApp(GetMaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}
