//import 'package:DartDemoConsole/DartDemoConsole.dart' as DartDemoConsole;

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main(List<String> arguments) {
//  print('Hello world!');

  //list
//  var list = [1, 2, 3];
//
//  list.forEach((item) => print('${list.indexOf(item)}: $item'));

  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);

// ?? 表达式
//  String playerName(String name) => name ?? 'Guest';
//
//  print(playerName("aa"));

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
}
