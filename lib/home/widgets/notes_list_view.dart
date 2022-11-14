import 'package:flutter/material.dart';
import 'package:notes_app_provider/home/widgets/widgets.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 2,
      ),
      itemBuilder: (context, index) {
        return const NotesListItem();
      },
    );
  }
}
