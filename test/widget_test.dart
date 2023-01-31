// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:namer_app/main.dart' as app;


void main() {
  testWidgets('', (WidgetTester tester) async {
      app.main();
    await tester.pumpAndSettle();
    final nextText=find.text('Next');
    expect(find.text('Next'), findsOneWidget);
    print(nextText);

    await tester.tap(nextText);

    
  //   for(var i=0;i<5;i++){
  //     await tester.tap(nextText);
  //     await Future.delayed(const Duration(seconds: 2));
  //   }
  // expect(find.text('Next'), findsOneWidget);


      

    // expect(find.text('1'), findsNothing);

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(bu));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
