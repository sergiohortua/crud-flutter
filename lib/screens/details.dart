import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

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
              Text('Nombre'),
              SizedBox(height: 10.0),
              Text('Description'),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
