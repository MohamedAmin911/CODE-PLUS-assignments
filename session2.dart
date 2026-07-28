void main() {
  //task 1
  execute(() {
    print("Hello Dart!");
  });

  //task 2
  print(square(5));
  print(greet("Alice"));
  print(isEven(4));

  //task 3
  // Addition
  calculate(10, 5, (x, y) => x + y);

  // Subtraction
  calculate(10, 5, (x, y) => x - y);

  // Multiplication
  calculate(10, 5, (x, y) => x * y);
}

//task 1
void execute(Function callback) {
  callback();
}

//task 2
int square(int number) => number * number;

String greet(String name) => "Hello $name";

bool isEven(int number) => number % 2 == 0;

//task 3
void calculate(int a, int b, int Function(int, int) callback) {
  print("Result: ${callback(a, b)}");
}
