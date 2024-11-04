import 'package:flutter/material.dart';
import 'package:myapp/UI/currency_converter.dart';
//import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(
    home: CurrencyConverter(),
    debugShowCheckedModeBanner: false,
    //debugShowMaterialGrid: true,
    scrollBehavior: MaterialScrollBehavior(),
    themeAnimationDuration: Durations.extralong1,
  ));
}
