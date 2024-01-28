class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print("Courses for $name (ID: $id):");
    for (var course in courses) {
      print("- $course");
    }
   
  }
}

void main() {
  // Creating two instances of the Student class
  var student1 = Student("ABDULLAH", "123456", ["Math", "English"]);
  var student2 = Student("ALI", "789012", ["History", "Science"]);

  // Performing operations and displaying information for student1
  student1.addCourse("Computer Science");
  student1.dropCourse("English");
  student1.displayCourses();

  // Performing operations and displaying information for student2
  student2.addCourse("Physics");
  student2.dropCourse("History");
  student2.displayCourses();
}
