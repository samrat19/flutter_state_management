import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MyRxDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class IncrementOne{

  BehaviorSubject _counter =  BehaviorSubject.seeded(0);

  Stream get stream => _counter.stream;
}
