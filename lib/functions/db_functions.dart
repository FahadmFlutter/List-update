import 'package:flutter/material.dart';
import 'package:my_db/db/models/data_models.dart';

ValueNotifier<List<StudentModel>> studentListNotifier =ValueNotifier([]);


// add to list
void addStudent(StudentModel value){
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
  // print(value.toString()); 
}