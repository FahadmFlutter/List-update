import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_db/db/models/data_models.dart';
import 'package:my_db/functions/db_functions.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _ageController,
                keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Age",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                onAddStudentButtonClicked();
              },
              label: const Text('Add Student'),
              icon: Icon(Icons.add),
               )
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    if (kDebugMode) {
      // print("$_name $_age");
      final _student = StudentModel(name: _name,age:_age);
      addStudent(_student);
    }
  }
}
