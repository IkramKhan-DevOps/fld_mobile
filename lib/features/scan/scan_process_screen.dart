import 'package:flutter/material.dart';

class ScanProcessScreen extends StatelessWidget {
  const ScanProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text('Open Camera'),
            onPressed: () {
              Navigator.pushNamed(context, '/scan_process_screen');
            },
          ),
        ),
      ),
    );
  }
}
