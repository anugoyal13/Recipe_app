import 'package:flutter/material.dart';
import 'package:workshop2_recipeapp/screen/homescreen.dart';

void main(){
runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyKitchenApp(),

    );
  }
}

