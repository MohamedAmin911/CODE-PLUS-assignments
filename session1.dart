void main() {
  // const: compile-time constant
  const String schoolName = "Future University";

  // final: value assigned once at runtime
  final int studentId = 2026001;

  // Variables with appropriate data types
  String studentName = "Mohamed Amin";
  int age = 23;
  double gpa = 3.85;
  bool isGraduated = false;

  // Nullable variables
  String? email = null;
  String? phoneNumber = "01012345678";

  print("===== Student Information =====");
  print("School: $schoolName");
  print("Student ID: $studentId");
  print("Name: $studentName");
  print("Age: $age");
  print("GPA: $gpa");
  print("Graduated: $isGraduated");

  // Null-aware operators
  print("Email: ${email ?? "Not Provided"}");
  print("Phone: ${phoneNumber ?? "Not Provided"}");

  // Null-aware assignment operator
  email ??= "student@example.com";

  print("\nAfter updating email:");
  print("Email: $email");
}
