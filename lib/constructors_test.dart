import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstructorsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Classes test"),
      onPressed: () {
        final employee = _Employee.verbose(42, 4200, "Mike", 182);
        print("Employee: $employee");

        final randomPerson = _Person.random();
        print("Random person: $randomPerson");

        final nonConstEmployee = _Employee.empty();
        final nonConstEmployee2 = _Employee.empty();

        print(nonConstEmployee == nonConstEmployee2);

        const constEmployee = _Employee.empty();
        const constEmployee2 = _Employee.empty();

        print(constEmployee == constEmployee2);
      },
    );
  }
}

class _Person {
  final String name;
  final int height;

  _Person(this.name, this.height);

  _Person.verbose(this.name, this.height) {
    print("_Person verbose constructor with name: $name and height: $height");
  }

  const _Person.empty()
      : name = "",
        height = 0;

  factory _Person.random() {
    return _Person(Random().nextInt(200).toString(), Random().nextInt(200));
  }

  @override
  String toString() {
    return '_Person{name: $name, height: $height}';
  }


}

class _Employee extends _Person {
  final int joinDate;
  final int salary;

  _Employee(this.joinDate, this.salary, String name, int height)
      : super(name, height);

  _Employee.verbose(this.joinDate, this.salary, String name, int height)
      : super(name, height) {
    print(
        "_Employee verbose constructor with joinDate: $joinDate and salary: $salary");
  }

  const _Employee.empty()
      : joinDate = 0,
        salary = 0,
        super.empty();

  @override
  String toString() {
    return '_Employee{joinDate: $joinDate, salary: $salary, name: $name, height: $height}';
  }


}
