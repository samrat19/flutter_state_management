import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome to State management',style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue[900],
              ),),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                elevation: 30.0,
                onPressed: () => Navigator.of(context).pushNamed('set-state'),
                color: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Set-State',style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                elevation: 30.0,
                onPressed: () => Navigator.of(context).pushNamed('state-ful-builder'),
                color: Colors.tealAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Stateful Builder',style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueGrey,
                  ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                elevation: 30.0,
                onPressed: () => Navigator.of(context).pushNamed('rx-bloc'),
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('RX-Dart',style: TextStyle(
                    fontSize: 40.0,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
