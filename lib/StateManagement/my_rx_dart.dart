import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MyRxDart extends StatefulWidget {
  @override
  _MyRxDartState createState() => _MyRxDartState();
}

class _MyRxDartState extends State<MyRxDart> {

  @override
  void initState() {
    super.initState();
    counterBlocRX..getInitial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rx BLoC'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: StreamBuilder(
          stream: counterBlocRX.counterObservable,
          builder: (context, AsyncSnapshot<int> snapshot) => Text(
            snapshot.data.toString(),
            style: TextStyle(
              fontSize: 70.0,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: counterBlocRX.increment,
            backgroundColor: Colors.amber,
            heroTag: 1,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20.0,),
          FloatingActionButton(
            onPressed: counterBlocRX.decrement,
            backgroundColor: Colors.amber,
            heroTag: 2,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class CounterBlocRX {
  int initialCount = 0;
  final BehaviorSubject<int> _counterSubject = BehaviorSubject<int>();

  getInitial(){
    _counterSubject.sink.add(0);
  }

  Stream<int> get counterObservable => _counterSubject.stream;

  void increment() {
    initialCount++;
    _counterSubject.sink.add(initialCount);
  }

  void decrement(){
    initialCount--;
    _counterSubject.sink.add(initialCount);
  }

  void dispose() {
    _counterSubject.close();
  }
}

final counterBlocRX = CounterBlocRX();
