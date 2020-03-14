import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MyCounter(),
      child: MyCounterPage(),
    );
  }
}

class MyCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyCounter myCounter = Provider.of<MyCounter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Text(
          '${myCounter.counter}',
          style: TextStyle(
            fontSize: 90,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => myCounter.increment(),
      ),
    );
  }
}

class MyCounter extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }
}
