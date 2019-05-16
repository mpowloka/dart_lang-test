import 'package:flutter/material.dart';

class CollectionsOperatorsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Collections operators test"),
      onPressed: () {

        testSpreadOperator();

      },
    );
  }

  void testSpreadOperator() {

    final listWithIntValues = [1, 2, 3];
    print('listWithIntValues: $listWithIntValues');

    final listWithStringValues = ["As", "If", "Hey"];
    print('listWithStringValues: $listWithStringValues');

    List<String> nullList;

    final frankensteinList = [

      "Value0",
      ...listWithStringValues,
      ...?nullList,
      for(var i in listWithIntValues) "Value $i",
      if(true) "if collection condition hey!"

    ];

    print('frankensteinList: $frankensteinList');

  }
}
