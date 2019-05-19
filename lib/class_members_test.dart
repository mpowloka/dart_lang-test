import 'dart:math';

import 'package:flutter/material.dart';

class ClassMembersTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Class members test"),
      onPressed: () {

        final object = _ExampleClass(4);
        print(object.valueSquared);
        print(object == _ExampleClass(4));

        dynamic dynamicObject = object;
        dynamicObject.hello();

      },
    );
  }
}

class _ExampleClass {

  final int value;

  get valueSquared => pow(value, 2);

  _ExampleClass(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is _ExampleClass &&
              runtimeType == other.runtimeType &&
              value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  noSuchMethod(Invocation invocation) {
    print("Nah nah, cannot invoke that!");
  }

}