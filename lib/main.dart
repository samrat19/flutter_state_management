import 'package:flutter/material.dart';
import 'package:flutter_state_management/StateManagement/my_set_state.dart';

import 'StateManagement/my_stateful_builder.dart';

main() => runApp(MaterialApp(
  initialRoute: 'state-ful-builder',
  routes: {
    'set-state': (_) => MySetState(),
    'state-ful-builder': (_) => MyStatefulBuilder(),
  },
),);