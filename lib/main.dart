import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/StateManagement/Bloc_Pattern/screen/counter_screen.dart';
import 'package:flutter_state_management/StateManagement/my_provider.dart';

//import 'package:flutter_state_management/StateManagement/my_rx_dart.dart';
import 'package:flutter_state_management/StateManagement/my_set_state.dart';
import 'package:flutter_state_management/StateManagement/my_stream_builder.dart';
import 'package:flutter_state_management/home_page.dart';
import 'StateManagement/Bloc_Pattern/Logic/counter_bloc.dart';
import 'StateManagement/my_rx_dart.dart';
import 'StateManagement/my_stateful_builder.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home-page',
        routes: {
          'set-state': (_) => MySetState(),
          'state-ful-builder': (_) => MyStatefulBuilder(),
          'rx-bloc': (_) => MyRxDart(),
          'provider': (_) => MyProvider(),
          'home-page': (_) => HomePage(),
          'stream-builder': (_) => MyStreamBuilder(),
     //     'bloC-pattern': (_) => InitiateStage(),
        },
      ),
    );

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider<CounterBloc>(
//         create: (context) => CounterBloc(),
//         child: CounterScreen(),
//       ),
//     );
//   }
// }
