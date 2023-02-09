import 'dart:convert';

class StudentModel {
  final int id;
  final String name;
  final String age;
  StudentModel({
    required this.id,
    required this.name,
    required this.age,
  });

  StudentModel copyWith({
    int? id,
    String? name,
    String? age,
  }) {
    return StudentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      age: map['age'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) => StudentModel.fromMap(json.decode(source));

  @override
  String toString() => 'StudentModel(id: $id, name: $name, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StudentModel &&
      other.id == id &&
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ age.hashCode;
}
