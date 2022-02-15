import 'package:contador/src/pages/contador_page.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

//Un widget es una clase que extiende
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
