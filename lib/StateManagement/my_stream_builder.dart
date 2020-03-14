import 'dart:async';
import 'package:flutter/material.dart';

class MyStreamBuilder extends StatelessWidget {
  final MyCounter myCounter = MyCounter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: myCounter.getCounter(),
          initialData: 0,
          builder: (context, snapshot) {
            return Text(
              '${snapshot.data}',
              style: TextStyle(fontSize: 90),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => myCounter.increment(),
      ),
    );
  }
}

class MyCounter {
  StreamController _controller = StreamController<int>();
  int _counter = 0;
  Stream<int> getCounter() => _controller.stream;
  void increment() {
    _counter++;
    _controller.add(_counter);
  }

  dispose() => _controller.close();
}
