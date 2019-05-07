import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test app"),
      ),
      body: Column(
        children: <Widget>[
          FinalLateInitTestButton(),
        ],
      ),
    );
  }
}

class FinalLateInitTestButton extends StatelessWidget {

  final value = getValue();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("Final variable late init"), onPressed: () {});
  }

}

class
