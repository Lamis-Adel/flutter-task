import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.contact_mail_outlined, size: 64, color: Color(0xFF156B68)),
                  const SizedBox(height: 20),
                  Text('Contact Page', style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 16),
                  const Text('Thank you for visiting!', textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  const Card(
                    child: ListTile(
                      leading: Icon(Icons.email_outlined),
                      title: Text('Demo email'),
                      subtitle: Text('student@example.com'),
                    ),
                  ),
                  const SizedBox(height: 28),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.home_outlined),
                    label: const Text('Back to Home'),
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
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
