import 'package:flutter/material.dart';
import 'package:notes_app_provider/l10n/l10n.dart';

class SaveNoteButton extends StatelessWidget {
  const SaveNoteButton({
    super.key,
    required this.validateForm,
  });

  final bool Function() validateForm;

  @override
  Widget build(BuildContext context) {
    final labels = context.l10n;
    return TextButton(
      key: const Key('save_button'),
      onPressed: () {
        final isValid = validateForm();
        if (isValid) {
          // TODO(piotrmitkowski): submit form
        }
      },
      child: Text(
        labels.saveButtonTitle,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
