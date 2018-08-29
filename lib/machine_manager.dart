import 'package:flutter/material.dart';

import './machines.dart';

class MachineManager extends StatefulWidget {
  final String startingMachine; //external data

  MachineManager(this.startingMachine);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MachineManagerState();
  }
}

class _MachineManagerState extends State<MachineManager> {
  List<String> _machines = []; //internal data

  @override
    void initState() {
      _machines.add(widget.startingMachine);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _machines.add('Machine 2');
                });
              },
              child: Text('Add machine'),
            )),
        Machines(_machines),
      ],
    );
  }
}
