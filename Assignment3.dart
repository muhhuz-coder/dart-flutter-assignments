//Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a message indicating that the vehicle is being driven. Then create a Car class that inherits from Vehicle and has a numDoors property. Override the drive() method in the Car class to print a message that includes the number of doors.
//Vehicle
class Vehicle {
    late String brand;
    late int model;
    late int year;
    Vehicle(this.brand,this.model,this.year);
    void drive() {
        print("vehicle details:$brand $model $year");
    }
}
class Car extends Vehicle {
    late int noOfDoors;
    Car(String brand,int model,int year,this.noOfDoors):super(brand,model,year);
    @override void drive() {
        print("car details:$brand $model $year $noOfDoors");
    }
}

//Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and withdraw() that modify the balance property. Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property. Override the withdraw() method in the CheckingAccount class to check if the withdrawal amount is within the transaction limit before modifying the balance property.
//Bank
class BankAccount {
  double balance = 0;
  late String accountNumber ;
  BankAccount(this.balance, this.accountNumber);
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit = 0;
  CheckingAccount(double balance, String accountNumber, this.transactionLimit)
      : super(balance, accountNumber);
  @override void withdraw(double amount) {
    if (amount > transactionLimit) {
      print("Withdrawal amount execeeds transaction limit!");
    } else {
      balance -= amount;
      print("Amount of $amount dollar successfully withdrawed! new balance is $balance ");
    }
  }
}

//Create a Person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person. Then create a Student class that inherits from Person and has a major property. Override the fullName() method in the Student class to include the major in the full name.
//Person
class Person {
  late String firstname ;
  late String lastname ;
  Person(this.firstname, this.lastname);
  String fullname() {
    return '$firstname$lastname';
  }
}

class Student extends Person {
  String major;
  Student(String firstname, String lastname, this.major)
      : super(firstname, lastname);
  @override String fullname() {
    return "${super.fullname()} ($major)";
  }
}

void main() {
  //Vehicle
  print("Vehicle class");
  Vehicle v=Vehicle ("honda",2001,1981);
    v.drive();
    Car c=Car ("honda",2001,1981,4);
    c.drive();

  //Bank Account
  print("\n\nBank class");
  CheckingAccount account = CheckingAccount(500, "3213113", 1000);
  print("Balance before deposit: " + account.balance.toString());
  account.deposit(1000);
  print('Deposited 1000 dollars');
  print("Balance after deposit: " + account.balance.toString());
  print("Withdraw 1300 dollars");
  account.withdraw(1300);
  account.withdraw(200);
  print("\n\nPerson class");
  //Student
  Student s = Student("Muhammad ", "Huzaifa", "Social Science");
  print(s.fullname());
}
