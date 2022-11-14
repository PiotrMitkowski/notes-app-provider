import 'package:flutter/material.dart';
import 'package:notes_app_provider/l10n/l10n.dart';

class NoteField extends StatelessWidget {
  const NoteField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labels = context.l10n;
    return TextFormField(
      key: const Key('note_text_field'),
      minLines: 3,
      maxLines: null,
      style: theme.textTheme.headline1,
      decoration: InputDecoration(
        hintText: labels.noteFieldHint,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return labels.noteFieldValidationError;
        }
        return null;
      },
      onChanged: (value) {
        // TODO(piotrmitkowski): update note content
      },
    );
  }
}
