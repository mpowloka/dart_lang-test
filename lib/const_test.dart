import 'package:flutter/material.dart';

class ConstTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Const test"),
      onPressed: () {
        var a = const _BigConstClass();
        var b = const _BigConstClass();
        var c = _BigConstClass();

        print("a == b = ${a == b}"); //true

        print("a == c = ${a == c}"); //false
      },
    );
  }
}

class _BigConstClass {

  final int _finalValue = 42;

  final _finalString = "Const string";

  final _finalSmallConstClass = const _SmallConstClass(43);

  ///Compilation error - cannot have a non-constant or a
  ///non-final primitive variable in class with const constructor.
  //final _NonConstClass _objectValue = _NonConstClass(42);

  const _BigConstClass();
}

class _SmallConstClass {

  final int _value;

  const _SmallConstClass(this._value);

}

class _NonConstClass {

  int _value;

  _NonConstClass(this._value);

}
