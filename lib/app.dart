import 'package:flutter/material.dart';
import 'stack.dart';
class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'This is a demo app', home: stk(), debugShowCheckedModeBanner: false);
  }
}
