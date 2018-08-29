import 'package:flutter/material.dart';

import './machine_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {//context is a positional argument, first argument of build()
    return MaterialApp(
      //named arguments, we target an argument named home
      home: Scaffold(
        appBar: AppBar(
          title: Text('Water Efficiency Monitor'), //positional argument, just pass in a string
        ),
        body: MachineManager('Machine 1'),
      ),
    );
  }
}
