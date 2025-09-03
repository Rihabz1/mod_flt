import 'package:flt_mod/list_view.dart';
import 'package:flt_mod/mod8.dart';
import 'package:flt_mod/mod8_C2.dart';
import 'package:flt_mod/mod_11/cls1_life_cycle.dart';
import 'package:flutter/material.dart';
//import 'stack.dart';
// import 'mod9C1_alert_dialog.dart';
//import 'rough.dart';
//import 'm9c2.dart';
//import 'mod9c3.dart';


class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        colorScheme: ColorScheme.dark(
          primary: Colors.red,
          secondary: Colors.redAccent,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 152, 78, 236),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      title: 'This is a demo app',
      initialRoute: '/',
      routes: {
        '/': (context) => counterApp(),
        '/class1': (context) => mod8C2(),
        '/class2': (context) => listV(),
      },
      //home: Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
