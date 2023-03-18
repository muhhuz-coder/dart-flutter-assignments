import 'dart:math';
import 'dart:io';
class Circle {
    late double radius;
    void setRadius(double val) {
        radius=val;
    }
    double get getRadius=>radius;
    void calculateCircumference() {
        print("${3.142*pow(radius,2)}");
    }
}

class Student {
    late String name;
    late int age;
    late String major;
    late double gpa;
    String get getName=>name;
    int get getAge=>age;
    String get getMajor=>major;
    double get getGpa=>gpa;
    void setName(String a) {
        name=a;
    }
    void setAge(int b) {
        age=b;
    }
    void setMajor(String c) {
        major=c;
    }
    void setGpa(double d) {
        gpa=d;
    }
    void calculateGrade() {
        if(age>=0 && age<3) {
            print("grade is 1");
        } else if(age>=3 && age<5) {
            print("grade is 2");
        } else if(age>=5 && age<8) {
            print("grade is 3");
        } else if(age>=8 && age<10) {
            print("grade is 4");
        } else if(age>=10) {
            print("grade is 5");
        } else {
            print("invalid age");
        }

    }

}

class Book {
    late String title;
    late String author;
    late String publisher;
    late double price;
    String get getTitle=>title;
    String get getAuthor=>author;
    String get getPublisher=>publisher;
    double get getPrice=>price;
    void setTitle(String a) {
        title=a;
    }
    void setAuthor(String b) {
        author=b;
    }
    void setPublisher(String c) {
        publisher=c;
    }
    void setPrice(double d) {
        price=d;
    }
    void calculateDiscount(int perc) {
        print("price after discount of $perc\% is ${price*(1-(perc/100))}");
    }

}

class Course {
    late String name;
    late String code;
    late String instructor;
    late int credits;
    String get getName => name;
    String get getCode => code;
    String get getInstructor => instructor;
    int get getCredits => credits;

    void setName(String a) {
        name=a;
    }
    void setCode(String b) {
        code=b;
    }
    void setInstructor(String c) {
        instructor=c;
    }
    void setCredits(int d) {
        credits=d;
    }

    void calculateTotalCost(double costPerCredit) {
        print("total cost of $name course is ${credits * costPerCredit}");
    }
}

void palindrome (String abc) {
    int len= abc.length;
    int x=0;
    if (len%2!=0) {
        x=1;
    }
    int i=0;
    for(; i<(len+x)/2; i++) {
        if(abc[i]!=abc[len-i-1]) {
            break;
        }
    };
    if(i==(len+x)/2) {
        print ("$abc is palindrome");
    } else {
        print("$abc is not palindrome");
    }
}
class BankAccount {
    late double balance ;
    late String ownername ;
    BankAccount(this.ownername, this.balance);
    double get getBalance => balance;
    String get getOwner => ownername;
}

class Bank {
    late List<BankAccount> acc;
    Bank() {
        acc = [];
    }
    void addAccount(BankAccount a) {
        acc.add(a);
    }

    void removeAccount(BankAccount b) {
        acc.remove(b);
    }

    void findHighValueBank() {
        BankAccount max = acc[0];
        int i=0;
        for (; i < acc.length; i++) {
            if (acc[i].balance > max.balance) {
                max = acc[i];
            }
        }
        print("balance of owner of highest valuw bank is : ${max.balance}");
        print("name of owner of highest value bank is :"+ max.ownername);
    }
}

void main() {
    print("***********************Q1************************");
    Circle c=Circle();
    c.setRadius(4.23);
    print(c.getRadius);
    print("***********************Q2************************");
    Student s=Student();
    s.setName("huzaifa");
    print(s.getName);
    s.setAge(3);
    print(s.getAge);
    s.setGpa(2.4);
    print(s.getGpa);
    s.setMajor("CS");
    print(s.getMajor);
    s.calculateGrade();
    print("************************Q3***********************");
    Book b=Book();
    b.setTitle("book");
    print(b.getTitle);
    b.setAuthor("ali");
    print(b.getAuthor);
    b.setPrice(800);
    print(b.price);
    b.setPublisher("rashid publishers");
    print(b.getPublisher);
    b.calculateDiscount(20);
    print("*************************Q4*********************");
    Course xyz=Course();
    xyz.setName("COMPUTER SCIENCE");
    print(xyz.getName);
    xyz.setCode("1234");
    print(xyz.getCode);
    xyz.setInstructor("abid");
    print(xyz.getInstructor);
    xyz.setCredits(80);
    print(xyz.getCredits);
    xyz. calculateTotalCost(30.0);
    print("***********************Q5************************");
    Bank accountControl = Bank();
    BankAccount acc1 = BankAccount("Muhammad huzaifa", 1000.0);
    BankAccount acc2 = BankAccount("yasir anas", 11200.50);
    accountControl.addAccount(acc1);
    accountControl.addAccount(acc2);
    accountControl.findHighValueBank();
    print("***********************Q6************************");
    palindrome("madame");
    palindrome("madam");

}