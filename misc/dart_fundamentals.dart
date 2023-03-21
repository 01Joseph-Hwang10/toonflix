// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, avoid_print, prefer_initializing_formals, prefer_const_declarations, prefer_const_constructors, dead_code, prefer_inlined_adds, unnecessary_null_in_if_null_operators, dead_null_aware_expression, avoid_init_to_null

// =======================================================
// ==================== 1. main function ====================
// =======================================================

// dart는 컴파일시 (파일 실행시) main 함수를 찾습니다.
// `main` 함수가 없으면 프로그램이 실행되지 않습니다.
void main() {
  // 이 안에 테스트 해보고 싶은 코드를 작성해보세요.
}

// =======================================================
// ==================== 2. variables ====================
// =======================================================

// 변수
void variables() {
  var x = 5; // `var` 키워드를 이용해 변수를 선언할 수 있습니다.
  int y = 10; // 변수의 타입을 명시적으로 지정할 수도 있습니다.
  var z; // 변수를 선언할 때 값을 할당하지 않으면, `null`이 할당됩니다.

  // `?` 키워드를 이용해 Nullable 변수를 선언할 수 있습니다.
  // Nullable이란 변수가 `null`이 될 수 있는 변수를 의미합니다.
  int? a;

  a = 5;
  a = null; // No problem
  // y = null; // Error: A value of type 'Null' can't be assigned to a variable of type 'int'.

  // `final` 키워드로 선언된 변수는 한 번 값을 할당하면 변경할 수 없습니다.
  // `final` 키워드는 추후에 class 섹션에서 다시 설명합니다.
  final int b = 2;
  // b = 3; // Error: Can't assign to the final variable 'b'.

  // late 키워드로 선언된 변수는 선언과 동시에 값을 할당하지 않아도 됩니다.
  // 이는 주로 API 호출 등의 비동기적인 작업을 할 때 유용합니다.
  late final int c;
  c = 5; // No problem
  // c = 6; // Error: Can't assign to the final variable 'c'.

  // `const` 키워드로 선언된 변수는 컴파일 시점에 (앱 실행전에 미리) 값이 할당됩니다.
  // `const`로 할당된 변수는 `final`과 다르게 앱 패키징 등의 과정에서 소스의 일부로 포함됩니다.
  //
  // cf: `final`로 선언된 변수는 런타임 시점에 값이 할당됩니다.
  const int d = 5;
  // d = 6; // Error: Can't assign to the const variable 'd'.
}

// =======================================================
// ==================== 3. data types ====================
// =======================================================

// 타입
// Dart는 정적 타입 언어입니다. 변수의 타입을 지정하면 이후에 변경할 수 없습니다.
void dataTypes() {
  // Dart는 여러가지 데이터형을 지원합니다. 아래는 그 중 일부입니다.
  int x = 5; // 정수형
  double y = 10.5; // 실수형
  bool z = true; // 불리언
  String str = "hello"; // 문자열
  List<int> l = [1, 2, 3]; // 리스트
  Set<int> s = {1, 2, 3}; // 집합.
  Map<String, int> m = {"a": 1, "b": 2}; // Map 타입. python dictionary와 유사합니다.
}

// =======================================================
// 3-1. built-in data types
// 이 아래는 기초적인 데이터형에 관한 설명입니다.
// 이 부분은 이런 메서드들이 있다 정도로만 이해하고 넘어가도 되고,
// 전부다 읽지 않아도 됩니다.
// 간단히 훑어보시고 4. operators 부분으로 넘어가시면 됩니다.
// =======================================================

// 이 아래는 기초적인 데이터형에 관한 설명입니다.

// 정수형 & 실수형
void numberDataType() {
  int x = 5;

  // 정수형은 몇 가지 유용한 프로퍼티, 메서드를 지원합니다.
  x.isOdd; // x가 홀수인지 여부를 반환합니다. (cf: `isEven`)
  x.isFinite; // x가 유한한지 여부를 반환합니다. (cf: `isInfinite`, `isNaN`)
  x.abs(); // x의 절대값을 반환합니다.
  x.round(); // x의 반올림값을 반환합니다. (cf: `ceil`, `floor`)
  x.toString(); // x를 string으로 변환해 반환합니다. (cf: `toStringAsFixed`)

  double y = 5.5;

  // 실수형은 몇 가지 유용한 프로퍼티, 메서드를 지원합니다.
  y.isFinite; // y가 유한한지 여부를 반환합니다. (cf: `isInfinite`, `isNaN`)
  y.abs(); // y의 절대값을 반환합니다.
  y.round(); // y의 반올림값을 반환합니다. (cf: `ceil`, `floor`)
  y.toString(); // y를 string으로 변환해 반환합니다. (cf: `toStringAsFixed`)
}

// 불리언
void booleanDataType() {
  bool x = true;

  // 불리언은 몇 가지 유용한 프로퍼티, 메서드를 지원합니다.
  x.toString(); // x를 string으로 변환해 반환합니다.
}

// 문자열
void stringDataType() {
  String x = "hello";

  // 문자열은 몇 가지 유용한 프로퍼티, 메서드를 지원합니다.
  x.length; // x의 길이를 반환합니다.
  x.isEmpty; // x가 비어있는지 여부를 반환합니다. (cf: `isNotEmpty`)
  x.contains("h"); // x가 "h"를 포함하고 있는지 여부를 반환합니다. (cf: `startsWith`, `endsWith`)
  x.indexOf("e"); // x에서 "e"의 인덱스를 반환합니다. (cf: `lastIndexOf`)
  x.substring(1, 3); // x에서 1번째 인덱스부터 3번째 인덱스 전까지의 문자열을 반환합니다.
  x.replaceFirst(
    'h',
    'j',
  ); // x에서 첫번째 "h"를 "j"로 바꾼 문자열을 반환합니다. (cf: `replaceAll`, `trim`)
  x.split("e"); // x를 "e"를 기준으로 나눈 문자열 리스트를 반환합니다.
  x.toLowerCase(); // x를 소문자로 변환한 문자열을 반환합니다. (cf: `toUpperCase`)

  // 또한 string은 `$`를 이용한 interpolation을 지원합니다.
  String y = "hello";
  String z = "world";
  String str = "$y $z"; // str = "hello world"

  int a = 5;
  int b = 10;
  String str2 = "$y $z ${a + b}"; // str2 = "hello world 5"
}

// 리스트
void listDataType() {
  List<int> x = [1, 2, 3];

  // 리스트는 몇 가지 유용한 프로퍼티, 메서드를 지원합니다.
  x.length; // x의 길이를 반환합니다.
  x.isEmpty; // x가 비어있는지 여부를 반환합니다. (cf: `isNotEmpty`)
  x.first; // x의 첫번째 요소를 반환합니다. (cf: `last`)
  x.reversed; // x의 역순을 반환합니다.
  x.indexOf(2); // x에서 2의 인덱스를 반환합니다.
  x.contains(2); // x가 2를 포함하고 있는지 여부를 반환합니다.
  x.sublist(1, 3); // x에서 1번째 인덱스부터 3번째 인덱스 전까지의 리스트를 반환합니다.
  x.map((e) => e * 2); // x의 각 요소에 주어진 함수를 적용한 리스트를 반환합니다.
  x.add(4); // x의 끝에 4를 추가합니다. (cf: `addAll`)
  x.insert(0, 0); // x의 0번째 인덱스에 0을 추가합니다. (cf: `insertAll`)
  x.remove(2); // x에서 2를 제거합니다. (cf: `removeAt`, `removeLast`, `removeRange`)
  x.take(2); // x에서 앞에서부터 2개의 요소를 포함하는 리스트를 반환합니다. (cf: `takeWhile`)
  x.skip(2); // x에서 앞에서부터 2개의 요소를 제외한 리스트를 반환합니다. (cf: `skipWhile`)
  x.cast<double>(); // x의 요소를 모두 주어진 타입으로 변환한 리스트를 반환합니다.

  // x에서 주어진 함수의 조건을 만족하는 (true를 반환하는) 요소만을 포함하는 리스트를 반환합니다.
  // (cf: `any`, `every`, `firstWhere`, `lastWhere`, `singleWhere`)
  //
  // 만약 `import 'package:collection/collection.dart';`를 사용한다면,
  // firstWhereOrNull, lastWhereOrNull, singleWhereOrNull 등의 메서드를 사용할 수 있습니다.
  x.where((e) => e % 2 == 0);

  x.join(", "); // x의 각 요소를 ", "로 연결한 문자열을 반환합니다.

  // x의 각 요소를 누적하여 반환합니다. (cf: `reduce`)
  // 자세한 설명은 아래 `listFoldMethod`를 참고하세요.
  x.fold(
    0, // 초기값
    (accumulatedValue, currentValue) =>
        accumulatedValue + currentValue, // 누적값과 현재값을 더한 값을 반환합니다.
  );
}

void listFoldMethod() {
  List<int> x = [1, 2, 3];

  // x의 각 요소를 누적하여 반환합니다. (cf: `reduce`)
  x.fold(
    0, // 초기값
    (accumulatedValue, currentValue) =>
        accumulatedValue + currentValue, // 누적값과 현재값을 더한 값을 반환합니다.
  );

  // 위 `fold`의 동작 과정은 아래 코드와 같습니다.
  int combineFunction(accumulatedValue, currentValue) {
    return accumulatedValue + currentValue;
  }

  int initialValue = 0;
  int accumulatedValue = initialValue;
  for (int i = 0; i < x.length; i++) {
    int currentValue = x[i];
    combineFunction(accumulatedValue, currentValue);
  }
}

void mapDataType() {
  Map<String, int> x = {
    "a": 1,
    "b": 2,
    "c": 3,
  };

  // Map은 아래와 같은 프로퍼티, 메서드를 지원합니다.
  x.length; // x의 길이를 반환합니다.
  x.isEmpty; // x가 비어있는지 여부를 반환합니다. (cf: `isNotEmpty`)

  // x의 키를 반환합니다. (cf: `values`)
  x.keys; // ["a", "b", "c"]

  // x의 키와 값들을 반환합니다.
  // MapEntry는 key와 value를 갖는 클래스입니다.
  x.entries; // [MapEntry("a", 1), MapEntry("b", 2), MapEntry("c", 3)]
  x.containsKey("a"); // x가 "a"를 포함하고 있는지 여부를 반환합니다. (cf: `containsValue`)
  x.addEntries(
      [MapEntry("d", 4)]); // x에 MapEntry("d", 4)를 추가합니다. (cf: `addAll`)
  x.remove("a"); // x에서 "a"를 제거합니다. (cf: `removeWhere`)
  x.map(
    (key, value) => MapEntry(key, value * 2),
  ); // x의 각 키와 값에 주어진 함수를 적용한 Map을 반환합니다. (cf: `forEach`)
}

void setDataType() {
  Set<int> x = {1, 2, 3};

  // Set은 아래와 같은 프로퍼티, 메서드를 지원합니다.
  x.length; // x의 길이를 반환합니다.
  x.isEmpty; // x가 비어있는지 여부를 반환합니다. (cf: `isNotEmpty`)
  x.contains(1); // x가 1을 포함하고 있는지 여부를 반환합니다.
  x.lookup(1); // x에서 1을 찾아 반환합니다.
  x.where((e) =>
      e % 2 ==
      0); // x에서 짝수인 요소만 반환합니다. (cf: `any`, `every`, `firstWhere`, `lastWhere`, `singleWhere`)
  x.add(4); // x에 4를 추가합니다. (cf: `addAll`)
  x.remove(1); // x에서 1을 제거합니다. (cf: `removeWhere`)
  x.map(
    (e) => e * 2,
  ); // x의 각 요소에 주어진 함수를 적용한 집합을 반환합니다. (cf: `forEach`)
  x.join(", "); // x의 각 요소를 ", "로 연결한 문자열을 반환합니다.
  x.fold(
    0, // 초기값
    (accumulatedValue, currentValue) =>
        accumulatedValue + currentValue, // 누적값과 현재값을 더한 값을 반환합니다.
  ); // x의 각 요소를 누적하여 반환합니다. (cf: `reduce`)
}

// =======================================================
// 3-2. generic data types & typedefs
// 이 아래는 dart 언어의 generic data types에 대한 설명입니다.
// 정적 타입 언어인 dart에서 generic data types는 매우 중요합니다.
// =======================================================

// Generic data types
void genericDataTypes() {
  List x = []; // List 타입은 1개의 positional type argument를 받습니다.

// Examples:
  List<int> y = [1, 2, 3]; // int 타입의 요소를 갖는 List입니다.
  List<List<int>> z = [
    [1, 2],
    [3, 4]
  ]; // int 타입의 요소를 갖는 List를 갖는 List입니다.
}

// Typedefs

typedef Listof<T> = List<T>; // typedef를 사용하여 generic type을 정의할 수 있습니다.
typedef Mapof<K, V> = Map<K, V>;

void typedefs() {
  Listof<int> a = [1, 2, 3]; // int 타입의 요소를 갖는 List입니다.
  Mapof<String, int> b = {
    "a": 1,
    "b": 2,
    "c": 3
  }; // String 타입의 키와 int 타입의 값들을 갖는 Map입니다.
}

// Generic type in class

class CustomList<T> {
  final List<T> _list;

  CustomList(this._list);

  List<T> get list => _list;
}

void genericTypeInClass() {
  CustomList<int> x = CustomList([1, 2, 3]);
  print(x.list); // [1, 2, 3]
}

// Generic type in function

List<T> map<T>(List<T> list, T Function(T) f) {
  List<T> result = [];
  for (int i = 0; i < list.length; i++) {
    result.add(f(list[i]));
  }
  return result;
}

void genericTypeInFunction() {
  List<int> x = map([1, 2, 3], (e) => e * 2);
  print(x); // [2, 4, 6]
}

// =======================================================
// ==================== 4. operators ====================
// =======================================================

void operators() {
  // Arithmetic operators

  // Plus
  1 + 2; // 3

  // Minus
  1 - 2; // -1

  // Multiplication
  1 * 2; // 2

  // Division
  1 / 2; // 0.5

  // Truncating division operator.
  // It returns the integer value of the division.
  1 ~/ 2; // 0

  // Remainder operator. (Modulo operator)
  1 % 2; // 1

  // Relational operators
  1 == 2; // false
  1 != 2; // true
  1 > 2; // false
  1 < 2; // true
  1 >= 2; // false
  1 <= 2; // true

  // Logical operators
  true && false; // false
  true || false; // true
  !true; // false

  // Assignment operators
  double x = 1;
  x += 2; // 3
  x -= 2; // 1
  x *= 2; // 2
  x /= 2; // 1

  // Ternary operator
  1 > 2 ? 1 : 2; // 2
  1 < 2 ? 1 : 2; // 1

  // Null-aware operators
  // `??` operator returns the value of its left-hand side operand if it is not null;
  // otherwise, it evaluates the right-hand side operand and returns its result.
  1 ?? 2; // 1
  null ?? 2; // 2
  // `?.` operator returns the value of its left-hand side operand if it is not null;
  // otherwise, it returns null.
  String? s = null;
  s?.length; // null

  // Cascade notation
  List<int> y = [1, 2, 3]
    ..add(4)
    ..add(5)
    ..add(6);
  print(y); // [1, 2, 3, 4, 5, 6]
}

// =======================================================
// ==================== 5. functions ====================
// =======================================================

// Functions

// Functions with required positional arguments
// 아래 예시에서는 a, b 둘 다 필수적인 positional argument입니다.
int addWithRequiredPositionalArguments(int a, int b) {
  return a + b;
}

// Functions with optional positional arguments
// 아래 예시에서는 b는 선택적인 positional argument입니다.
int addWithOptionalPositionalArguments(int a, [int b = 0]) {
  return a + b;
}

// Functions with required named arguments
// 아래 예시에서는 a, b 둘 다 필수적인 named argument입니다.
int addWithRequiredNamedArguments({required int a, required int b}) {
  return a + b;
}

// Functions with optional named arguments
// 아래 예시에서는 b는 선택적인 named argument입니다.
int addWithOptionalNamedArguments({required int a, int b = 0}) {
  return a + b;
}

void functions() {
  // In Dart, you can define functions using the 'function' keyword.
  // Functions can have positional arguments, named arguments, and return values.
  int x = addWithRequiredPositionalArguments(1, 2); // 3
  int y = addWithOptionalPositionalArguments(1); // 1
  int z = addWithRequiredNamedArguments(a: 1, b: 2); // 3
  int w = addWithOptionalNamedArguments(a: 1); // 1
}

// =======================================================
// ==================== 6. classes ====================
// =======================================================

// Constructors
//
// 생성자(constructor)는 클래스의 인스턴스를 생성할 때 호출됩니다.
// 생성자는 클래스 이름과 같은 이름을 가집니다.

// Constructor Pattern 1: positional arguments
class Person1 {
  final String name;
  final String? description;
  final int xp;

  // `name`은 nullable하지 않기 때문에 그대로 사용합니다.
  // `description`은 nullable하기 때문에 생성자 호출 시 값을 넘겨주지 않을 수 있습니다
  // `xp`는 nullable하지 않지만 default value를 설정했기 때문에 생성자 호출 시 값을 넘겨주지 않을 수 있습니다.
  Person1(this.name, [this.description, this.xp = 0]);
}

Person1 p1 = Person1("John"); // name: "John", description: null, xp: 0

// Constructor Pattern 2: named arguments
class Person2 {
  final String name;
  final String? description;
  final int xp;

  // `name`, `xp`가 nullable하지 않기 때문에 `required` 키워드를 사용합니다.
  Person2({
    required this.name,
    this.description,
    this.xp = 0,
  });
}

Person2 p2 = Person2(name: "John"); // name: "John", description: null, xp: 0

// Constructor Pattern 3: initializers
class Person3 {
  final String name;
  final String? description;
  final int xp;

  // `name`, `xp`가 nullable하지 않기 때문에 `required` 키워드를 사용합니다.
  Person3({
    required String name,
    String? description,
    int? xp,
    // 왼쪽의 `name`은 `this.name`, 오른쪽의 `name`은 constructor에서 넘겨지는 `name` (required String name)입니다.
  })  : name = name,
        description = description,
        xp = xp ?? 0;
}

Person3 p3 = Person3(name: "John"); // name: "John", description: null, xp: 0

// Constructor Pattern 4: constructor with body

class Person4 {
  final String name;
  // `description`은 constructor body에서 값을 할당하기 때문에 `late` 키워드를 사용합니다.
  late final String? description;
  final int xp;

  Person4({
    required this.name,
    String? description,
    int? xp,
  }) : xp = xp ?? 0 {
    description = description?.substring(0, 10);
  }
}

Person4 p4 = Person4(
  name: "John",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
); // name: "John", description: "Lorem ipsu", xp: 0

// Constructor Pattern 5: named constructors

class Person {
  final String name;
  final String? description;
  final int xp;

  Person({
    required this.name,
    this.description,
    this.xp = 0,
  });

  // named constructor
  // xp가 100000인 새로운 Person 인스턴스를 생성합니다.
  Person.createSuperman({
    required this.name,
    this.description,
  }) : xp = 100000;

  // named constructor
  // Map<String, dynamic>을 받아서 Person 인스턴스를 생성합니다.
  Person.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        description = map["description"],
        xp = map["xp"];
}

// Constructor Pattern 6: factory constructors

class Area {
  final int length;
  final int breadth;
  final int area;

  // private constructor
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  // factory 생성자는 새 인스턴스를 생성하기 전에 필요한 작업을 수행할 수 있습니다.
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area._internal(length, breadth);
  }

  factory Area.createSquare(int side) {
    return Area(side, side);
  }
}

// Methods & Getters & Setters

class Animal {
  String name;
  String? description;
  int xp;

  Animal({
    required this.name,
    this.description,
    this.xp = 0,
  });

  // Method
  void sayHello() {
    print("Hello!");
  }

  // Getter
  String get nameAndDescription {
    return "$name: $description";
  }

  // Setter
  set nameAndDescription(String value) {
    List<String> parts = value.split(":");
    name = parts[0];
    description = parts[1];
  }
}

// Inheritance

class Dog extends Animal {
  Dog({
    required String name,
    String? description,
    required int xp,
  }) : super(
          name: name,
          description: description,
          xp: xp,
        );

  void bark() {
    print("Woof!");
  }
}

class Cat extends Animal {
  Cat({
    required String name,
    String? description,
    required int xp,
  }) : super(
          name: name,
          description: description,
          xp: xp,
        );

  void meow() {
    print("Meow!");
  }
}

// =======================================================
// =============== 7. abstract classes =================
// =======================================================

abstract class Food {
  String name;
  String? description;

  Food({
    required this.name,
    this.description,
  });

  // 상속받는 클래스에서 구현해야 하는 추상 메소드를 정의합니다.
  void eat();
}

class Pizza extends Food {
  Pizza({
    required String name,
    String? description,
  }) : super(
          name: name,
          description: description,
        );

  // 추상 메소드를 구현합니다.
  @override // override 키워드를 사용하여 `override`하고 있음을 명시합니다.
  void eat() {
    print("Yum!");
  }
}

// =======================================================
// =================== 7. mixins =====================
// =======================================================

// mixin은 클래스를 상속받지 않고 기능을 추가할 수 있습니다.
// mixin은 `with` 키워드를 사용하여 사용할 수 있습니다.
// 또한 여러 개의 mixin을 사용할 수 있습니다.
mixin Flyable {
  void fly() {
    print("Flying...");
  }
}

mixin Swimmable {
  void swim() {
    print("Swimming...");
  }
}

class Duck extends Animal with Flyable, Swimmable {
  Duck({
    required String name,
    String? description,
    required int xp,
  }) : super(
          name: name,
          description: description,
          xp: xp,
        );
}

// =======================================================
// ===================== 7. enums =======================
// =======================================================

// enum은 어떤 값이 한정된 범위 내에 있음을 명시할 때 사용합니다.
enum Computer {
  desktop,
  laptop,
  tablet,
  smartphone,
}

// extension은 기존 enum에 메소드를 추가할 수 있습니다.
extension ComputerX on Computer {
  String get name {
    switch (this) {
      case Computer.desktop:
        return "Desktop";
      case Computer.laptop:
        return "Laptop";
      case Computer.tablet:
        return "Tablet";
      case Computer.smartphone:
        return "Smartphone";
    }
  }

  bool isMobile() {
    return this == Computer.tablet || this == Computer.smartphone;
  }
}
