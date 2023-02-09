import 'package:crudapp_riverpod/data/model/student_model.dart';
import 'package:crudapp_riverpod/feature/home/controller/notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final idcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final studentList = ref.watch(studentNotifierPod);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "CRUD APP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: idcontroller,
                decoration: const InputDecoration(
                    labelText: 'Id',
                    hintText: 'Enter the Student Id',
                    border: OutlineInputBorder()),
                style: const TextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: namecontroller,
                decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter the name',
                    border: OutlineInputBorder()),
                style: const TextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: agecontroller,
                decoration: const InputDecoration(
                    labelText: 'Age',
                    hintText: 'Enter the Age',
                    border: OutlineInputBorder()),
                style: const TextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer(
                builder: (context, ref, child) {
                  return SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ref.read(studentNotifierPod.notifier).addStudent(
                              StudentModel(
                                name: namecontroller.text,
                                age: agecontroller.text,
                                id: int.parse(idcontroller.text),
                              ),
                            );
                        idcontroller.clear();
                        namecontroller.clear();
                        agecontroller.clear();
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Add'),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: studentList.length,
                itemBuilder: (context, index) {
                  var student = studentList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Student Id : ${student.id}"),
                            Text("Student Name : ${student.name}"),
                          ],
                        ),
                        subtitle: Text("Student Age : ${student.age}"),
                        trailing: Wrap(
                          children: [
                            IconButton(
                              onPressed: () {
                                ref
                                    .read(studentNotifierPod.notifier)
                                    .updateStudent(
                                      name: namecontroller.text,
                                      age: agecontroller.text,
                                      index: index + 1,
                                    );
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.blue,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                ref
                                    .read(studentNotifierPod.notifier)
                                    .deleteStudent(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
