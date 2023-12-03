import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Foto'),
                Text('Description'),
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text('Description'), Text('Age')]),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    print('delete');
                  },
                  icon: Icon(Icons.delete),
                ),
                IconButton(
                  onPressed: () {
                    print('delete');
                  },
                  icon: Icon(Icons.edit),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
