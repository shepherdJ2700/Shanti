import 'package:flutter/material.dart';

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
                onPressed: () {},
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Journaling',
                onPressed: () {},
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Write & Release',
                onPressed: () {},
              ),

              const SizedBox(height: 16),

              _HomeActionButton(
                label: 'Doodle Pad',
                onPressed: () {},
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