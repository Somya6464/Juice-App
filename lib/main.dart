
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'JuiceHome.dart';
import 'Juice2.dart';



void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
   
    
    initialRoute: 'JuiceHome',
    routes: {
     
      'JuiceHome' : (context) => JuiceHome(),
      'Juice2' :(context) => const Juice2(),
     
    },
  ));
}



