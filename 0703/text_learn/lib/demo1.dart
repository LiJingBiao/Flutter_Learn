
class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void run() {
    print('${this.name}+++++${this.age}');
  }
}

void main () {
  var p = Person('Google', 11);
  p.run();
}