import 'package:crud/widgets/card_custom.dart';
import 'package:flutter/material.dart';

class ListCardCustom extends StatelessWidget {
  const ListCardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Cards'),
      ),
      body: ListView(
        children: [
          CardCustom(),
          CardCustom(),
          CardCustom(),
          CardCustom(),
          CardCustom(),
          CardCustom(),
        ],
      ),
    );
  }
}
