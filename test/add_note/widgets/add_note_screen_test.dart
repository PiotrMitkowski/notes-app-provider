import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app_provider/add_note/view/add_note_screen.dart';
import 'package:notes_app_provider/home/view/home_screen.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('Add Note Screen Tests', () {
    testWidgets(
      'Should correctly open add note screen',
      (tester) async {
        await tester.pumpApp(
          const HomeScreen(),
        );
        await tester.pumpAndSettle();
        final fabFinder = find.byType(FloatingActionButton);
        expect(fabFinder, findsOneWidget);
        await tester.tap(fabFinder);
        await tester.pumpAndSettle();
        final addNoteScreenFinder = find.byType(AddNoteScreen);
        expect(addNoteScreenFinder, findsOneWidget);
      },
    );
  });
}
