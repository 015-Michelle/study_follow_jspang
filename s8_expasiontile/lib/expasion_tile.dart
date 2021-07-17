import 'package:flutter/material.dart';

class ExpasionTileDemo extends StatelessWidget {
  const ExpasionTileDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expasion Tile')),
      body: Center(
        child: ExpansionTile(
          title: Text('Expasion Tile'),
          leading: Icon(Icons.ac_unit),
          subtitle: Text('click here'),
          backgroundColor: Colors.grey,
          children: [
            ListTile(
              title: Text('show something'),
              subtitle: Text('I am here'),
            )
            
          ],
        ),
      )
    );
  }
}