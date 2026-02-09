class Employee {
  String name;
  int salary;

  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    salary += amount;
  }
}

void main() {
  Employee emp = Employee("Omar", 5000);

  emp.giveRaise(1500);

  print("Employee Name: ${emp.name}");
  print("New Salary: ${emp.salary}");
}
