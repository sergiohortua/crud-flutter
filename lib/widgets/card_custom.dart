import 'package:crud/common/person.dart';
import 'package:crud/screens/details.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatefulWidget {
  final Function _function;
  Person person;
  int index;
  CardCustom(this._function, this.index, this.person, {super.key});
  @override
  State<CardCustom> createState() => _CardCustomState();
}

class _CardCustomState extends State<CardCustom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
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
                  height: 12.0,
                ),
                Text('Name: ${widget.person.name}'),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Description: ${widget.person.description}'),
              SizedBox(height: 10.0),
              Text('Age: ${widget.person.age}'),
            ]),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget._function(widget.index);
                    });
                  },
                  icon: const Icon(Icons.delete),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) =>
                              Details(widget.index, widget.person),
                        ),
                      ).then(
                        (value) => {setState(() {}), widget.person = value},
                      );
                    });
                  },
                  icon: const Icon(Icons.edit),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
