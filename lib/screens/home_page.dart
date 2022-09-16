import 'package:e_commerce/pages/add_student_page.dart';
import 'package:e_commerce/pages/list_student_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
          Text("Student ID"),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddStudentPage(),
                ),
              ),
            },
            style: ElevatedButton.
            styleFrom(primary: Color.fromARGB(255, 2, 17, 44)),
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20.sp),
            ),
          ),
        ]),
      ),
      body: ListStudentPage(),
    );
  }
}
