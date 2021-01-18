/*
  Const and final keywords
      const = we use this keyword when we want the value/variable to be a constant
      at compile-time.
      final - if we want a variable/value to always be constant = never


*/

void main(List<String> arguments) {
  print('Hello Dart');
  print('-----------------septrator------------');
  printhelloworld();
  print('-----------------Loop septrator------------');
  loop();
  print('----------------- Switch case septrator------------');
  switchcase();
  print('----------------- Class Learning septrator------------');
  class_learning();
  print('----------------- List septrator------------');
  list_tutorial();
  print('----------------- Map septrator------------');
  mapfunction();
}

void class_learning() {
  var mic = Microphone('boya', 2020, 'black');
  var mic2 = Microphone.initialize();
  print('mic ---- ${mic.name}');
  print('mic2 ---- ${mic2.name}');
  print('mic ---- ${mic2.isOn()}');
}

/*
abstaract class is conceptual class which can inherit to any class
 and all of the method and overide on the other class
 */

void printhelloworld() {
  String a;
  a = 'Hello World';

  int age = 13;
  double number = 23.34;

  bool isTrue = true;
  bool isFalse = false;
  print('$a $age $number $isTrue $isFalse');

  if (number > age) {
    print(isTrue);
  } else {
    print(isFalse);
  }

  if (!(number > age)) {
    print('not');
  }
}

void loop() {
  num number = 1;
  do {
    print('Do While loop $number');
    number += 10;
  } while (number < 34);

  while (true) {
    //infinite loop
    if (number >= 32) print('Going...');
    break;
  }

  for (var i = 0; i < 5; i++) {
    print('for loop $i');
  }
}

void switchcase() {
  // Switch case
  var age = 18;

  switch (age) {
    case 19:
      print('Old enough');
      break;
    case 20:
      print('Still good');
      break;
    case 89:
      print('Too old!');
      break;

    default:
      print('Default case of swith case $age');
  }
}

// class start
class Microphone {
  int model;
  String color;
  String name;

  //constructor
  Microphone(this.name, this.model, this.color);

  // old method of constructor
//   Microphone(String name, String color, int model) {
//
//       this.name = name;
//       this.color = color;
//       this.model = model;
//   }

  // Named Constructor
  Microphone.initialize() {
    name = 'Blue Yeti 2nd Edition';
    model = 67;
  }

  String get getName => name; // getter
  set setName(String value) => name = value; // setter

  void turnOn() {
    print('$name is on!');
  }

  bool isOn() => true;

  int modelNumber() => model;

  void turnOff() {
    print('$name is turned off!');
  }

  void setVolume() {
    print('$name with color: $color volume is up!');
  }
}

// class end
abstract class Animal {
  void breathe(); // an abstract method

  void makeNoise() {
    print('Making animal noises!');
  }
}

// Abstraction start
abstract class IsFunny {
  void makePeopleLaugh(); //abstract method
}

class TVShow implements IsFunny {
  String name;

  @override
  void makePeopleLaugh() {
    print('TV show is funny and makes people laugh!');
  }
}

class Comedian extends Person implements IsFunny {
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh() {
    print('Comedian making people laugh!');
  }
}

class Person implements Animal {
  String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breathe() {
    print('Person breathing through nostrils!');
  }

  @override
  void makeNoise() {
    print('Person shouting!');
  }

  @override
  String toString() => '$name $nationality';
}

// Abstraction end

// list start

class Person2 {
  String name;

  Person2(this.name);
  @override
  String toString() {
    // TODO: implement toString
    return name;
  }
}

void list_tutorial() {
  var list = [10, 2, 13, 24, 10, 56, 'sonu'];
  for (var i = 0; i < list.length; i++) {
    print('variable list --- ${list[i]}');
  }

  var onlyStrings = List<String>();
  onlyStrings = ['sonu', 'naveen'];
  for (var i = 0; i < onlyStrings.length; i++) {
    print('String list --- ${list[i]}');
  }

  var classtype = List<Person2>();
  var james = Person2('James');
  var sheila = Person2('Sheila');
  classtype = [james, sheila];
  for (var i = 0; i < classtype.length; i++) {
    print('Class type list  --- ${classtype[i]}');
  }
}
// list end

// map start
void mapfunction() {
  var a = {'name': 'sonu', 'age': 23};
  print(a['age']);
  a.forEach((key, value) {
    print('${key}: ${value}');
  });
}
// map end
