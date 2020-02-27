import 'package:flutter/material.dart';
import 'package:flutter_state_management/StateManagement/my_rx_dart.dart';
import 'package:flutter_state_management/StateManagement/my_set_state.dart';

import 'StateManagement/my_stateful_builder.dart';

main() => runApp(MaterialApp(
  initialRoute: 'rx-bloc',
  routes: {
    'set-state': (_) => MySetState(),
    'state-ful-builder': (_) => MyStatefulBuilder(),
    'rx-bloc': (_) => MyRxDart(),
  },
),);