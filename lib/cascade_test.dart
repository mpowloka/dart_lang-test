import 'package:flutter/material.dart';

class CascadeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Cascade test"),
      onPressed: () {
        builderTest();
      },
    );
  }

  void builderTest() {

    final buildable = Buildable()
        ..no1 = 11
        ..setNo2(22)
        ..no3 = 33;

    print(buildable);

  }
}

class Buildable {
  int no1;
  int _no2;
  int no3;

  void setNo2(int no2) {
    this._no2 = no2;
  }

  @override
  String toString() {
    return 'Buildable{no1: $no1, no2: $_no2, no3: $no3}';
  }


}