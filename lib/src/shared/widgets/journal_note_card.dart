import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/constants/app_text_styles.dart';

class JournalNoteCard extends StatelessWidget {
  const JournalNoteCard({
    Key? key,
    required this.title,
    required this.bodyText,
    required this.data,
    required this.color,
  }) : super(key: key);

  final String title;
  final String bodyText;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        elevation: 5.0,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.12),
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0.0, 1.0),
                  ),
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.14),
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(0.0, 2.0),
                  ),
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.20),
                    blurRadius: 1,
                    spreadRadius: -2,
                    offset: Offset(0.0, 3.0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 13, 10),
                child: Text(
                  title,
                  style: AppTextStyles.roboto16W700,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  color: Colors.blue,
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Text(
                  bodyText,
                  style: AppTextStyles.roboto14W400,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Text(
                  "Criado em: $data",
                  style: AppTextStyles.roboto10W300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
