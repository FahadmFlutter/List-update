import 'package:flutter/material.dart';
import 'package:my_db/Screens/widgets/add_student.dart';
import 'package:my_db/Screens/widgets/list_student.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          AddStudentWidget(),
         const Expanded(  child: ListStudentWidget())


        ],
      )),

    );
  }
}
