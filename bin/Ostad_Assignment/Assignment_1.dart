// Name  : Mehedi Firoz
// email : mehedifiroz12@gmail.com
// phone : 01785844560


abstract class Role {
  displayRole();
}


class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  displayRole() {

  }
}


class Student extends Person {
  String studentID;
  String grade;
  double score1;
  double score2;
  double score3;

  Student(String name, int age, String address, this.studentID, this.grade, this.score1, this.score2, this.score3)
      : super(name, age, address);

  double calculateAverageScore() {
    return (score1 + score2 + score3) / 3;
  }

  @override
  displayRole() {
    print("Role: Student");
  }

  displayStudentInfo() {
    print("Student Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}


class Teacher extends Person {
  String teacherID;
  String course1;
  String course2;
  String course3;

  Teacher(String name, int age, String address, this.teacherID, this.course1, this.course2, this.course3)
      : super(name, age, address);

  @override
  displayRole() {
    print("Role: Teacher");
  }

  void displayTeacherInfo() {
    print("Teacher Information:");
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Courses Taught:");
    print("- $course1");
    print("- $course2");
    print("- $course3");
  }
}


void main() {
  print("If a student, named Mehedi Firoz, is 26 years old and resides at Mirpur 1 Main Street. His average score is 70.0, calculated from scores of 70, 60, and 80 in three subjects. Then Output should be:\n");
  var student = Student("Mehedi Firoz", 26, "Mirpur 1", "Andaje", "ghorar dim", 70, 60, 80);
  student.displayStudentInfo();

  print("....................................................");

  print("If a teacher, named Ostad, is 9 years old and resides at Bangladesh And his course thoughts are Flutter, Web development, Marn Stack. Then Output should be: \n");
  var teacher = Teacher("Ostad", 9 , "Bangladesh", "Huday", "Flutter", "Web development", "MArn Stack");
  teacher.displayTeacherInfo();
}
