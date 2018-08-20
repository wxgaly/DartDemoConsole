//定义一个函数。
printInteger(int aNumber) {
  print('number is $aNumber。'); //打印到控制台。
}

main(List<String> args) {

//  var number = 42;
//  printInteger(number);
//
//  int lineCount;
//  assert(lineCount == null);

  var map = {
    1: 1,
    2: "2",
    3: args
  };

  map.forEach((key, value) {
    print('key is $key --- value is $value');
  });

}

