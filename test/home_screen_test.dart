import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app_provider/home/view/home_screen.dart';
import 'package:notes_app_provider/home/widgets/widgets.dart';

void main() {
  group('Home Screen Tests', () {
    testWidgets('Correctly opens home screen', (WidgetTester tester) async {
      await tester.pumpWidget(const HomeScreen());
      await tester.pump();
      final notesListFinder = find.byType(NotesListView);
      expect(notesListFinder, findsOneWidget);
    });
  });
}
