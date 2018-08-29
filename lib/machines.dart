import 'package:flutter/material.dart';

class Machines extends StatelessWidget {
  final List<String> machines;

  Machines(this.machines);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: machines
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/machine.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
