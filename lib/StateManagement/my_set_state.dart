import 'package:flutter/material.dart';

class MySetState extends StatefulWidget {
  @override
  _MySetStateState createState() => _MySetStateState();
}

class _MySetStateState extends State<MySetState> {

  int digit = 0;
  void addOne(){
    setState(() {
      digit = digit + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set State'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addOne,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          digit.toString(),
          style: TextStyle(
            fontSize: 90.0,
          ),
        ),
      ),
    );
  }
}
