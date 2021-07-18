import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/widgets/journal_app_bar.dart';
import 'package:raro_journal/src/shared/widgets/journal_bottom_bar.dart';

class NewNotePage extends StatefulWidget {
  NewNotePage({Key? key}) : super(key: key);

  @override
  _NewNotePageState createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.whiteToPurple,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: JournalAppBar(),
        ),
        backgroundColor: AppColors.transparent,
        floatingActionButton: JournalBottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
