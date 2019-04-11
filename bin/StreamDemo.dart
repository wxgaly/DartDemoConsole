import 'dart:async';

void main() {
  print('main start');
  testAwaitFor();
  print('main end');
}

Future testAwaitFor() async {
  await for (var data in asynchronousNaturalsTo(10)) {
    print('data is $data');
  }
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
