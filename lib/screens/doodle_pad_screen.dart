import 'package:flutter/material.dart';

class DoodlePadScreen extends StatelessWidget {
  const DoodlePadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doodle Pad'),
      ),
      body: const Center(
        child: Text(
          'Doodle Pad',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}