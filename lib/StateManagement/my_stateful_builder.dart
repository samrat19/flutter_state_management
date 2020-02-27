import 'package:flutter/material.dart';

class MyStatefulBuilder extends StatelessWidget {

  int digit = 0;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Stateful Builder'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.orange,
          onPressed: () => setState(() => digit++),
        ),
        body: Center(
          child: Text(
            digit.toString(),
            style: TextStyle(
              fontSize: 70.0,
            ),
          ),
        ),
      ),
    );
  }
}
