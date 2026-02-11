import 'package:flutter/material.dart';

class WriteReleaseScreen extends StatefulWidget {
  const WriteReleaseScreen({super.key});

  @override
  State<WriteReleaseScreen> createState() => _WriteReleaseScreenState();
}

class _WriteReleaseScreenState extends State<WriteReleaseScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _release() {
    if (_controller.text.trim().isEmpty) return;

    _controller.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Released 🌱'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write & Release'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  hintText: 'Write what you want to let go of...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _release,
                child: const Text('Release'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}