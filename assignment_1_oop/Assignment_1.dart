abstract class Role {
  void displayRole();
}

class Person implements Role {
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {}
}

class Student extends Person {
  late int studentId;
  late String grade;
  late List<int> courseScores = [];

  Student(String name, int age, String address, this.studentId, this.grade)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double avgCalculation() {
    int sum = courseScores.reduce((a, b) => a + b);
    return sum / courseScores.length;
  }

  void displayInformation() {
    displayRole();
    print('Name: $name\nAge: $age\nAddress: $address\nAverage Score: ${avgCalculation()}');
  }
}

class Teacher extends Person {
  late int teacherId;
  late List<String> courseTaught = [];

  Teacher(String name, int age, String address, this.teacherId)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void CourseTaught() {
    for (String course in courseTaught) {
      print('- $course');
    }
  }

  void displayInformation() {
    displayRole();
    print('Name: $name\nAge: $age\nAddress: $address');
    CourseTaught();
  }
}

class StudentManagementSystem {
  static void main(){

    Student student = Student('John Doe', 20, '123 Main st', 1, 'A');
    student.courseScores = [90, 85, 82];
    student.displayInformation();

    Teacher teacher = Teacher('Mrs. Smith', 35, '456 Oak st', 3);
    teacher.courseTaught = ['Math', 'English', 'Bangla'];
    teacher.displayInformation();
  }
}
void main (){
  StudentManagementSystem.main();
}