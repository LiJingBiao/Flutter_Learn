import 'package:mixin_learn/mixin_learn.dart' as mixin_learn;

class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

class PA extends P with A {}

main(List<String> arguments) {
  String result = '';
  PA pa =PA();
  result = pa.getMessage();
  print(result);

  AB ab = AB();
  result = ab.getMessage();
  print(result);
  BA ba = BA();
  result = ba.getMessage();

  print(result);
}
