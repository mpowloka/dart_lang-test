import 'package:flutter/material.dart';
import 'package:jug_2/constructors_test.dart';
import 'package:jug_2/collections_operators_test.dart';
import 'package:jug_2/const_test.dart';
import 'package:jug_2/final_late_init_test.dart';
import 'package:jug_2/funtion_signtures_test.dart';

import 'cascade_test.dart';
import 'closure_test.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FinalLateInitTestButton(),
            ConstTest(),
            CollectionsOperatorsTest(),
            FunctionSignaturesTest(),
            ClosureTest(),
            CascadeTest(),
            ConstructorsTest()
          ],
        ),
      ),
    );
  }
}
