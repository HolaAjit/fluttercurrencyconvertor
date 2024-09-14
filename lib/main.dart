import 'package:currency_convertor/pages/currency_convertor_cupertino_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:currency_convertor/pages/currency_converter_material_page.dart';

void main() {
  runApp(const MyApp());
}

//Types of widgets
// 1. stateless - state >> data is immutable (cannot be changed)
// 2. stateful
// 3.inherited

//Material Design - crteated by google
//Cupertino Design - Apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurencyConvertorCupertinoPage(),
    );
  }
}
