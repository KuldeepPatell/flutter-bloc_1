import 'package:bloc_state/bloc/counter/counter_bloc.dart';
import 'package:bloc_state/bloc/switch/switch_bloc.dart';
import 'package:bloc_state/ui/counter/counter_screen.dart';
import 'package:bloc_state/ui/switch/switch_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SwitchExample(),
      ),
    );
  }
}
