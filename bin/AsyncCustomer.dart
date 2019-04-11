import 'dart:async';
import 'dart:io';

void main() {
  print("测试");
  asyncTest();
}

List<int> list = [];
int value = 0;

var file = File("a.txt");

void asyncTest() {
  Timer.periodic(Duration(milliseconds: 10), (timer) {
    list.add(value++);
    log("500", "${list.length}");
    if (timer.tick == 500) {
      timer.cancel();
    }
  });

  Timer.periodic(Duration(milliseconds: 1000), (timer) {
    log("1000", "write before: ${list.length}");
    file.writeAsBytesSync(list, mode: FileMode.append, flush: true);
    list.clear();

    log("1000", "write after: ${list.length}");
    if (timer.tick == 5) {
      timer.cancel();
    }
  });
}

void log(String tag, String content) {
  print("${DateTime.now()}: $tag --- $content");
}

