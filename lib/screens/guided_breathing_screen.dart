import 'dart:async';
import 'package:flutter/material.dart';

class GuidedBreathingScreen extends StatefulWidget {
  const GuidedBreathingScreen({super.key});

  @override
  State<GuidedBreathingScreen> createState() => _GuidedBreathingScreenState();
}

class _GuidedBreathingScreenState extends State<GuidedBreathingScreen> {
  final List<String> _phases = [
    'Breathe in',
    'Hold',
    'Breathe out',
  ];

  int _currentPhaseIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startBreathingCycle();
  }

  void _startBreathingCycle() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _currentPhaseIndex =
            (_currentPhaseIndex + 1) % _phases.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guided Breathing'),
      ),
      body: Center(
        child: Text(
          _phases[_currentPhaseIndex],
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}