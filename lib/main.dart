import 'package:flutter/material.dart';
import 'package:projectstruc/pages/dash_board_screen.dart';
import 'package:projectstruc/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColor.black0001,
          appBarTheme: AppBarTheme(backgroundColor: AppColor.black0001)),
      home: DashBoardPage(),
    );
  }
}
