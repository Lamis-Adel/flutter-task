import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_task/main.dart';

void main() {
  testWidgets('Navigate Home to About to Contact and return', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.text('Home Page'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsOneWidget);

    await tester.tap(find.text('Go to Contact'));
    await tester.pumpAndSettle();
    expect(find.text('Contact Page'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('About Page'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Home Page'), findsOneWidget);

    await tester.tap(find.text('Go to About'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Go to Contact'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Back to Home'));
    await tester.pumpAndSettle();
    expect(find.text('Home Page'), findsOneWidget);
    expect(find.byTooltip('Back'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
