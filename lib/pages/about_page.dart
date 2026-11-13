import 'package:flutter/material.dart';

import 'contact_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.info_outline_rounded, size: 64, color: Color(0xFF156B68)),
                  const SizedBox(height: 20),
                  Text('About Page', style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 16),
                  const Text(
                    'This app demonstrates three Flutter pages, navigation, '
                    'an image, icons, and a custom theme.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 28),
                  FilledButton.icon(
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Go to Contact'),
                    onPressed: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(builder: (_) => const ContactPage()),
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
