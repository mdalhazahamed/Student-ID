
import 'package:e_commerce/screens/home_page.dart';
import 'package:e_commerce/screens/login_page.dart';
import 'package:e_commerce/screens/registration_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "BD Shop";

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 640),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: title,
            theme: ThemeData(textTheme: GoogleFonts.josefinSansTextTheme(
              Theme.of(context).textTheme,
            ),
           primarySwatch: Colors.green,
           visualDensity: VisualDensity.adaptivePlatformDensity,
                // themeMode: ThemeMode.system,
                // theme: MyThemes.lightTheme,
                // darkTheme: MyThemes.darkTheme,
                ),
            home: HomePage(),
          );
        });
  }
}
  