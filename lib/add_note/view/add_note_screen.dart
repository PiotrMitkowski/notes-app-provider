import 'package:flutter/material.dart';
import 'package:notes_app_provider/add_note/widgets/widgets.dart';
import 'package:notes_app_provider/l10n/l10n.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const AddNoteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _AddNoteView();
  }
}

class _AddNoteView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final labels = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(labels.addNoteScreenTitle),
        actions: [
          SaveNoteButton(
            validateForm: () => _formKey.currentState!.validate(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          child: const NoteField(),
        ),
      ),
    );
  }
}
