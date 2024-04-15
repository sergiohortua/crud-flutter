import 'package:crud/common/person.dart';
import 'package:flutter/material.dart';

class AddPerson extends StatefulWidget {
  // Person person;
  // int index;

  AddPerson({super.key});

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  final TextEditingController _textAddControllerName = TextEditingController();

  final TextEditingController _textAddControllerDescription =
      TextEditingController();

  final TextEditingController _textAddControllerAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // _textEditingControllerName.text = widget.person.name;
    // _textEditingControllerDescription.text = widget.person.description;
    // _textEditingControllerAge.text = widget.person.age.toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Column(
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
                          controller: _textAddControllerName,
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
                          controller: _textAddControllerDescription,
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
                          controller: _textAddControllerAge,
                        )),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        int age = int.tryParse(_textAddControllerAge.text) ?? 0;

                        setState(() {
                          Navigator.pop(
                              context,
                              Person(
                                _textAddControllerName.text,
                                _textAddControllerDescription.text,
                                age,
                              ));
                        });
                      },
                      child: Text('Guardar'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
