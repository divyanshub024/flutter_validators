// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Form validation smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Locate the TextFormField widgets
    final emailField = find.byType(TextFormField).at(0);
    final urlField = find.byType(TextFormField).at(1);
    final creditCardField = find.byType(TextFormField).at(2);
    final numericField = find.byType(TextFormField).at(3);

    // Enter invalid values
    await tester.enterText(emailField, 'invalid-email');
    await tester.enterText(urlField, 'invalid-url');
    await tester.enterText(creditCardField, '1234');
    await tester.enterText(numericField, 'abc');

    // Tap the submit button
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    // Verify that validation errors appear
    expect(find.text('Please enter a valid email address'), findsOneWidget);
    expect(find.text('Please provide a valid URL'), findsOneWidget);
    expect(find.text('Please enter a valid credit card number'), findsOneWidget);
    expect(find.text('Please enter a valid number'), findsOneWidget);

    // Enter valid values
    await tester.enterText(emailField, 'test@example.com');
    await tester.enterText(urlField, 'https://example.com');
    await tester.enterText(creditCardField, '4111111111111111');
    await tester.enterText(numericField, '25');

    // Tap the submit button again
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    // Verify that validation errors disappear
    expect(find.text('Please enter a valid email address'), findsNothing);
    expect(find.text('Please provide a valid URL'), findsNothing);
    expect(find.text('Please enter a valid credit card number'), findsNothing);
    expect(find.text('Please enter a valid number'), findsNothing);

    // Verify success state (e.g., success SnackBar appears)
    expect(find.text('Form is valid!'), findsOneWidget);
  });
}
