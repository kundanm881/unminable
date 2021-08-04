import 'package:flutter/material.dart';

void main() => runApp(MayApp());

class MayApp extends StatelessWidget {
  const MayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("hello woeld!"),
        ),
      ),
    );
  }
}
