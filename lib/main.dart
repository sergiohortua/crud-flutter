import 'package:crud/screens/details.dart';
import 'package:crud/widgets/card_custom.dart';
import 'package:crud/widgets/list_card_custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: ListCardCustom());
  }
}
