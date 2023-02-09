import 'package:crudapp_riverpod/data/model/student_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentNotifier extends StateNotifier<List<StudentModel>> {
  StudentNotifier() : super([]);

  void addStudent(StudentModel studentModel) {
    state = [...state, studentModel];
  }

  void deleteStudent(int index) {
    state = List.unmodifiable(List.from(state)..removeAt(index));
  }

  void updateStudent(
      {required String name, required String age, required int index}) {
 

    var newState = state.map(
      (student) {
        if (student.id == index) {
          return student.copyWith(name: name, age: age);
        } else {
          return student;
        }
      },
    ).toList();

    state = newState;
  }
}

final studentNotifierPod =
    StateNotifierProvider<StudentNotifier, List<StudentModel>>(
  (ref) => StudentNotifier(),
);
