import 'package:engamrbakr/core/cache_Helper.dart';
import 'package:engamrbakr/screens/counter/States.dart';
import 'package:engamrbakr/screens/counter/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);
  

@override
Widget build(BuildContext context) {
  return BlocProvider(
    create: (context) => CounterController(),
    child: Builder(
      builder: (context) {
        final controller = CounterController.getObject(context);
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Counter',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      controller.plus();
                    },
                    child: Icon(Icons.add, size: 30),
                  ),
                  BlocBuilder<CounterController, CounterState>(
                    builder: (context,state) => Text(
                      controller.count.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      controller.minus();
                    },
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}}
