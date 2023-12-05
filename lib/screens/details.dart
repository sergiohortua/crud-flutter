import 'package:crud/common/person.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Person person;
  final TextEditingController _textEditingControllerName =
      TextEditingController();
  final TextEditingController _textEditingControllerDescription =
      TextEditingController();
  final TextEditingController _textEditingControllerAge =
      TextEditingController();

  Details(this.person, {super.key});

  @override
  Widget build(BuildContext context) {
    _textEditingControllerName.text = person.name;
    _textEditingControllerDescription.text = person.description;
    _textEditingControllerAge.text = person.age.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/astro.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Nombre:'),
                    const SizedBox(
                      width: 30.0,
                    ),
                    SizedBox(
                        width: 150.0,
                        child: TextField(
                          controller: _textEditingControllerName,
                          onChanged: (value) => {print(value)},
                        )),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Description:'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                        width: 150.0,
                        child: TextField(
                          controller: _textEditingControllerDescription,
                          onChanged: (value) => {print(value)},
                        )),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Age:'),
                    const SizedBox(
                      width: 60.0,
                    ),
                    SizedBox(
                        width: 150.0,
                        child: TextField(
                          controller: _textEditingControllerAge,
                          onChanged: (value) => (print(value)),
                        )),
                  ],
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
