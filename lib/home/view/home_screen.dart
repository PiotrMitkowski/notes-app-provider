import 'package:flutter/material.dart';
import 'package:notes_app_provider/add_note/view/add_note_screen.dart';
import 'package:notes_app_provider/home/widgets/widgets.dart';
import 'package:notes_app_provider/l10n/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final labels = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(labels.homeScreenTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, AddNoteScreen.route());
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotesListView(),
      ),
    );
  }
}
