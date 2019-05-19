import 'package:flutter/material.dart';

class AsyncTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Async test"),
      onPressed: () {
        print("Start call");
        final futureResult = generateLongList();
        print("Setup listener");
        futureResult.then((list) => print(list));
        print("Listener set");
      },
    );
  }
}

Future<List<int>> generateLongList() async {
  return generateListSync();
}

List<int> generateListSync() {
  return List.generate(999999, (i) => i);
}
