import 'package:crud/common/person.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Person person;
  Details(this.person, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text('Foto'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Nombre: ${person.name}'),
              SizedBox(height: 10.0),
              Text('Description: ${person.description}'),
              SizedBox(height: 10.0),
              Text('Age: ${person.age}'),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
