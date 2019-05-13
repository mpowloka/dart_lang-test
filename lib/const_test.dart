import 'package:flutter/material.dart';

class ConstTest extends StatefulWidget {

  @override
  _ConstTestState createState() => _ConstTestState();

}

class _ConstTestState extends State<ConstTest> {


  final array1 = const [1, 2, 3];

  var array2 = const [1, 2, 3];

  static const array3 = [1, 2, 3];

  final array4 = [1, 2, 3];

  var array5 = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Const test"),
      onPressed: () {
        testConstClass();

        testConstFields();
      },
    );
  }

  void testConstClass() {
    var a = const _BigConstClass();
    var b = const _BigConstClass();
    var c = _BigConstClass();

    print("a == b = ${a == b}"); //true

    print("a == c = ${a == c}"); //false
  }

  void testConstFields() {

    print("array1 == array2 = ${array1 == array2}"); //true
    print("array1 == array3 = ${array1 == array3}"); //true
    print("array1 == array4 = ${array1 == array4}"); //false
    print("array1 == array5 = ${array1 == array5}"); //false

    print("array4 == array5 = ${array4 == array5}"); //false


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
