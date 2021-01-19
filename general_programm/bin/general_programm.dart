void main(List<String> args) {
  // second_largest_number();
  // primenumber();
  isprime(4);
}

void second_largest_number() {
  var list = [245, 5542, 588, 58, 6685, 215];
  // for (var i = 0; i < list.length; i++) {
  //   int max1 = 0;
  //   int max2 = 0;
  //   if (list[i] > max1) {
  //     max1 = list[i];
  //   } else if (list[i] > max2) {
  //     max2 = list[i];
  //   }
  // }
  // Object max1
  // print(max1);
  list.sort();
  print(list[list.length - 2]);
}

void primenumber() {
  for (var i = 1; i < 20; i++) {
    for (var j = 1; j < i; j++) {
      if (i % j == 0) {
        print(i);
      }
    }
  }
}

void isprime(var i) {
  for (var j = 1; j < i; j++) {
    if (i % j == 0 && i == j && j == 1) {
      print(i);
    }
  }
}
