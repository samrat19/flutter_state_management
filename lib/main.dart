import 'package:flutter/material.dart';
import 'package:flutter_state_management/StateManagement/my_set_state.dart';

main() => runApp(MaterialApp(
  initialRoute: 'set-state',
  routes: {
    'set-state': (_) => MySetState(),
  },
),);