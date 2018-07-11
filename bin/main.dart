//import 'package:DartDemoConsole/DartDemoConsole.dart' as DartDemoConsole;

import 'dart:math';

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');


main(List<String> arguments) {
//  print('Hello world!');

  //list
//  var list = [1, 2, 3];
//
//  list.forEach((item) => print('${list.indexOf(item)}: $item'));

  // Create a function that adds 2.
//  var add2 = makeAdder(2);
//
//  // Create a function that adds 4.
//  var add4 = makeAdder(4);
//
//  assert(add2(3) == 5);
//  assert(add4(3) == 7);

// ?? 表达式
//  String playerName(String name) => name ?? 'Guest';
//
//  print(playerName("aa"));

//  var callbacks = [];
//  for (var i = 0; i < 2; i++) {
//    callbacks.add(() => print(i));
//  }
//  callbacks.forEach((c) => c());


  // 类
//  var p = new Point(2, 2);

// Set the value of the instance variable y.
//  p.y = 3;

// Get the value of y.
//  assert(p.y == 3);

// Invoke distanceTo() on p.
//  num distance = p.distanceTo(new Point(4, 4));
//  print(distance);


  print(greetBob(new Person('Kathy')));
  print(greetBob(new Impostor()));

}
