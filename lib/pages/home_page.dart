import 'package:flutter/material.dart';

import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.home_rounded, size: 40, color: Color(0xFF156B68)),
                  const SizedBox(height: 16),
                  Text('Home Page', style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 12),
                  const Text('Welcome to my Flutter app!', textAlign: TextAlign.center),
                  const SizedBox(height: 28),
                  // This bundled image works without an internet connection.
                  Image.asset(
                    'assets/images/flutter_logo.png',
                    width: 128,
                    height: 128,
                    semanticLabel: 'Flutter logo',
                    filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(height: 28),
                  FilledButton.icon(
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Go to About'),
                    onPressed: () {
                      // Push adds a page; the AppBar back arrow returns here.
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(builder: (_) => const AboutPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
