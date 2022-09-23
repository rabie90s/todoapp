import 'package:flutter/material.dart';
import 'package:todoapp/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //init Hive
  await Hive.initFlutter();
  //open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
