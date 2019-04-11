import 'dart:math';

main() {
//  var point = Point(2, 2);
//
//  num dis = point.distanceTo(Point(4, 4));
//
//  print(dis);

  void printF(int value) {
    print(value);
  }

  var list = [1, 2, 3];

  var a = printF;

  list.forEach(a);

  for (var i = 0; i < list.length; i++) {
    printF(list[i]);
  }

}
