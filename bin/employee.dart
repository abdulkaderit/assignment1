// Base class
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

// Subclass: Manager
class Manager extends Employee {
  String department;

  Manager(super.name, super.salary, this.department);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Department: $department");

  }
}

// Subclass: Developer
class Developer extends Employee {
  String programmingLanguage;

  Developer(super.name, super.salary, this.programmingLanguage);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");

  }
}

void main() {
  // Creating objects
  Manager manager = Manager("Atik Hassan", 15000, "Human Resources");
  Developer developer = Developer("Shobo Khan", 25000, "Dart/Flutter");

  // Display their details
  manager.displayInfo();
  developer.displayInfo();
}
