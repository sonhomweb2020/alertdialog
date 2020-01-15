import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:alert_dialog/User.dart';
void main() => runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:User(),
    );
  }
}