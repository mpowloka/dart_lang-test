import 'package:flutter/material.dart';

class FunctionSignaturesTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Function signatures test"),
      onPressed: () {
        simpleFunction();

        optionalNamedParamsFunction(value2: 42);

        optionalPositionalParamsFunction(5);
      },
    );
  }
}

var loudify = (msg) => '!!!${msg.toUpperCase()}!!!';

void simpleFunction() {
  print("Hello! I'm so simple");
}

void optionalNamedParamsFunction({int value1 = 5, @required int value2}) {
  print(
      'Hello! These are my optional, named params: $value1 and $value2 (first one has default value!)');
}

void optionalPositionalParamsFunction(int value1, [int value2]) {
  print('Hey, this was required: $value1');
  if (value2 != null) {
    print('And this was optional: $value2');
  }
}

//compilation error - default value must be constant
//void optionalPositionalParamsFunction2([_Value value2 = _Value(4)]) {}

class _Value {
  final int _value;

  _Value(this._value);
}
