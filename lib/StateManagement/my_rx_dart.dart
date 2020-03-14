import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MyRxDart extends StatefulWidget {
  @override
  _MyRxDartState createState() => _MyRxDartState();
}

class _MyRxDartState extends State<MyRxDart> {
  CounterBloc _counterBloc = CounterBloc(initialCount: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rx BLoC'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: StreamBuilder(
          stream: _counterBloc.counterObservable,
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
            onPressed: _counterBloc.increment,
            backgroundColor: Colors.amber,
            heroTag: 1,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 20.0,),
          FloatingActionButton(
            onPressed: _counterBloc.decrement,
            backgroundColor: Colors.amber,
            heroTag: 2,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class CounterBloc {
  int initialCount = 0;
  BehaviorSubject<int> _subjectCounter;

  CounterBloc({this.initialCount}) {
    _subjectCounter = BehaviorSubject<int>.seeded(
        this.initialCount); ///initializes the subject with element already
  }

  Stream<int> get counterObservable => _subjectCounter.stream;

  void increment() {
    initialCount++;
    _subjectCounter.sink.add(initialCount);
  }

  void decrement(){
    initialCount--;
    _subjectCounter.sink.add(initialCount);
  }

  void dispose() {
    _subjectCounter.close();
  }
}
