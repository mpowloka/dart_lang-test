import 'package:flutter/material.dart';

class ClosureTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Closure test"),
        onPressed: () {

          var adder = _makeAdder(42);

          print(adder(5));

          print(adder(5));

          print(adder(5));

        },
    );
  }
}

Function _makeAdder(int addBy) {
  return (num i) => addBy + i;
}
