class Person {
  String name;
  String description;
  int age;

  Person(this.name, this.description, this.age);
  @override
  String toString() {
    // TODO: implement toString
    return '$name,$description,$age';
  }
}
