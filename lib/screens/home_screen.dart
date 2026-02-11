import 'package:flutter/material.dart';
import 'guided_breathing_screen.dart';
import 'journal_screen.dart';
import 'write_release_screen.dart';
import 'doodle_pad_screen.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              Text(
                'Shanti',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 32),

              _HomeActionButton(
                label: 'Guided Breathing',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const GuidedBreathingScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Journaling',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const JournalScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Write & Release',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const WriteReleaseScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Doodle Pad',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DoodlePadScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _HomeActionButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}