import 'package:crud/common/person.dart';
import 'package:crud/widgets/card_custom.dart';
import 'package:flutter/material.dart';

class ListCardCustom extends StatelessWidget {
  ListCardCustom({super.key});

  List<Person> people = [
    Person('Anderson', 'Ingeniero', 28),
    Person('Pancho', 'Desarrollador', 32),
    Person('Juan', 'QA', 21),
    Person('Luis', 'Desarrollador', 50),
    Person('Sergio', 'Desarrollador', 15),
    Person('Carlos', 'Desarrollador', 46),
    Person('Christian', 'Desarrollador', 70),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Cards'),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) => CardCustom(people[index]),
      ),
    );
  }
}
