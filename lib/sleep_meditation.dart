import 'package:flutter/material.dart';

class SleepMeditation extends StatelessWidget {
  const SleepMeditation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [Icon(
            Icons.favorite,
            color: Colors.white,
          )],
      ),
    );
  }
}