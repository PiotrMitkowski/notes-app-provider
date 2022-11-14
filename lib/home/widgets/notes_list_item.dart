import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app_provider/l10n/l10n.dart';

class NotesListItem extends StatelessWidget {
  const NotesListItem({super.key});

  String _formatCreationDate(DateTime rawDate) {
    final formatter = DateFormat('EEE, d MMM y, HH:mm');
    return formatter.format(rawDate);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labels = context.l10n;
    final formattedDate = _formatCreationDate(DateTime.now());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Note content',
            key: const Key('note_body'),
            style: theme.textTheme.headline1,
          ),
          const SizedBox(height: 6),
          Text(
            '${labels.noteCreationDateLabel} $formattedDate',
            textAlign: TextAlign.right,
            style: theme.textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
