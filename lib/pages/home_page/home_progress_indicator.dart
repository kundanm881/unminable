import 'package:flutter/material.dart';

class HomeProgressIndicator extends StatelessWidget {
  const HomeProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(25),
          ),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
