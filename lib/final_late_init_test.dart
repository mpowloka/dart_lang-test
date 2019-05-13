import 'package:flutter/material.dart';

final topLevelValue = _Value("Top level variable");

class FinalLateInitTestButton extends StatelessWidget {
  final classLevelValue = _Value("Class level variable");

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Final variable late init test"),
      onPressed: () {
        print("Going to access class level variable");
        print(classLevelValue._value);
        print("Variable accessed");

        print("Going to access top level variable");
        print(topLevelValue._value);
        print("Variable accessed");
      },
    );
  }
}

class _Value {
  final String _value;

  _Value(this._value) {
    print("Variable being initialized: $_value");
  }
}
