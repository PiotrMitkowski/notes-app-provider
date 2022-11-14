import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app_provider/home/view/home_screen.dart';
import 'package:notes_app_provider/home/widgets/widgets.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('Home Screen Tests', () {
    testWidgets('Correctly opens home screen', (WidgetTester tester) async {
      await tester.pumpApp(
        const HomeScreen(),
      );
      await tester.pumpAndSettle();
      final notesListFinder = find.byType(NotesListView);
      expect(notesListFinder, findsOneWidget);
    });
  });
}
