
import 'dart:async';

test() async {
  int result = await Future.delayed(Duration(milliseconds:2000),(){
    return Future.value(123);
  });
  print(result);
}
main() {
  test();
}