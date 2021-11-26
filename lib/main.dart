import 'package:cogent/screens/LogIn.dart';
import 'package:cogent/screens/mainScreen.dart';
import 'package:cogent/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 810),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Product(),
      ),
    );
  }
}
