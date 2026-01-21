import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  //the widget instance myapp gets created once
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  //we are passing the key to super abstract class which is widgets here
  const MyApp({super.key}); 
  // key is a class that helps flutter to differentiate between widgets
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:CurrencyConverterMaterialPage(),
    );
  }
}