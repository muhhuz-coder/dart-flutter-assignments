import 'dart:io';
void main() {
//task1
  print("Enter length to calculate area of triangle(Q1): ");
  String l = stdin.readLineSync() as String;
  int length = int.parse(l);
  print("Enter breadth to calculate area of triangle(Q1): ");
  String b = stdin.readLineSync() as String;
  int breadth = int.parse(b);
  print("Area of triangle is $double${(length * breadth / 2)} (Q1)");
//task2
  print("Enter floating point number 1(Q2): ");
  String fp1 = stdin.readLineSync() as String;
  double floatingpnt1 = double.parse(fp1);
  print("Enter floating point number 2(Q2):  ");
  String fp2 = stdin.readLineSync() as String;
  double floatingpnt2 = double.parse(fp2);
  print(
      "average of two floating point numbers $floatingpnt1 and $floatingpnt2 is ${((floatingpnt1 + floatingpnt2) / 2).toStringAsFixed(2)} (Q2)");
//task3
  print("Enter radius to calculate volume and surface area of sphere(Q3) : ");
  String r = stdin.readLineSync() as String;
  int radius = int.parse(r);
  print(
      "The volume of the sphere is: ${(4 / 3) * 3.142 * radius * radius * radius} (Q3)");
  print(
      "The surface area of the sphere is: ${4 * 3.142 * radius * radius} (Q3)");
//task4
  print("Enter base value to calculate power(Q4) : ");
  String ba = stdin.readLineSync() as String;
  int base = int.parse(ba);
  print("Enter exponent value to calculate power(Q4) : ");
  String e = stdin.readLineSync() as String;
  int exponent = int.parse(e);
  calpower(exponent, base);
//task5
  print("Enter temperature in celsius to convert it to farenheit(Q5) : ");
  String t = stdin.readLineSync() as String;
  double temperature = double.parse(t);
  print(
      "$temperature Celsius is equal to ${(9 / 5) * temperature + 32}  Fahrenheit (Q5)");
//task6(bonus)
  print("Enter +ve number to check if prime or not(Q6 bonus): ");
  String n = stdin.readLineSync() as String;
  int number = int.parse(n);
  checkprime(number);
}

void calpower(int e, int b) {
  int result = 1;

  for (int i = 1; i <= e; i++) {
    result = result * b;
  }

  print("$b raised to the power of $e is: $result (Q4)");
}

void checkprime(int number) {
  if (number <= 1) {
    print("The number is not a prime number.");
    return;
  }

  bool isPrime = true;

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print("The number is a prime number.(Q6)");
  } else {
    print("The number is not a prime number.(Q6)");
  }
}
