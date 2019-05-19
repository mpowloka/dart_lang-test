import 'package:flutter/material.dart';

class MixinTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Mixin test"),
      onPressed: () {

        final service = _SimpleService();

        service.serve();
        service.serve();
        service.serve();

        print(service is _AdditionalFunctionality);

        final advancedService = _AdvancedService();
        advancedService.advancedServe();

        final baseService = _BaseServiceImpl();
        baseService.serve();

      },
    );
  }
}

class _SimpleService with _AdditionalFunctionality, _AdditionalFunctionality2 {

  void serve() {
    increment();
    printAndIncrementCounter();
  }

}

class _AdvancedService extends _SimpleService with _AdditionalFunctionality3 {

  void advancedServe() {
    serve();
    super.serve();
  }

  @override
  void serve() {
    print("_AdvancedService is serving");
  }

}

class _BaseServiceImpl extends _BaseService with _AdditionalFunctionality3 {

}

abstract class _BaseService {

  void serve();

}

class _AdditionalFunctionality {

  int counter = 0;

  void increment() => counter++;

}

mixin _AdditionalFunctionality2 {

  int counter = 0;

  void printAndIncrementCounter() {
    print(counter);
    counter++;
  }

}

mixin _AdditionalFunctionality3 {

  void serve() {
    print("_AdditionalFunctionality3 is serving");
  }

}