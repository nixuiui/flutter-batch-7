import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_6/blocs/counter_bloc.dart';
import 'package:flutter_batch_7/widgets/counter_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter2Page extends StatefulWidget {
  const Counter2Page({super.key});

  @override
  State<Counter2Page> createState() => _Counter2PageState();
}

class _Counter2PageState extends State<Counter2Page> {

  final counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, int>(
      bloc: counterBloc,
      listener: (context, state) {
        if(state % 5 == 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Counter updated: $state')),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("Counter Page"),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Action for settings button
                },
              ),
            ],
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                CounterLayoutWidget(
                  counter: state,
                  onNumberPressed: counterBloc.increment,
                )
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              FloatingActionButton(
                onPressed: counterBloc.increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: counterBloc.decrement,
                tooltip: 'Increment',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}