import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/constants/app_text_styles.dart';

class JournalSearchField extends StatefulWidget {
  JournalSearchField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  _JournalSearchFieldState createState() => _JournalSearchFieldState();
}

class _JournalSearchFieldState extends State<JournalSearchField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: AppTextStyles.roboto16W400,
      cursorColor: AppColors.black.withOpacity(0.54),
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: Icon(
          Icons.search,
          color: AppColors.black.withOpacity(0.54),
          size: 30.0,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.black),
        ),
      ),
    );
  }
}
