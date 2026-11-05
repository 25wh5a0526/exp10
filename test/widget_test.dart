
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('CustomButton test', (WidgetTester tester) async {
    bool isPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomButton(
            label: 'Test Button',
            onPressed: () {
              isPressed = true;
            },
          ),
        ),
      ),
    );

    expect(find.text('Test Button'), findsOneWidget);

    await tester.tap(find.text('Test Button'));
    await tester.pump();

    expect(isPressed, isTrue);
  });
}
