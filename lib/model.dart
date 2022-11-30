// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

List<Employee> EmployeeFromJson(String str) => List<Employee>.from(
    json.decode(str).map((x) => Employee.fromJson(x)));

String EmployeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  final String name;
  final String email;
  final String age;
  final String designation;
  Employee({
    required this.name,
    required this.email,
    required this.age,
    required this.designation,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        name: json["name"],
        email: json["email"],
        age: json["age"],
        designation: json["designation"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "age": age,
        "designation": designation,

      };
}
