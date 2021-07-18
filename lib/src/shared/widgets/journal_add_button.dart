import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class JournalAddButton extends StatelessWidget {
  const JournalAddButton({Key? key, this.onPressed}) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          gradient: AppColors.cyanToPurpleAddButton,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.12),
              offset: Offset(0, 1),
              blurRadius: 18,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: AppColors.black.withOpacity(0.14),
              offset: Offset(0, 6),
              blurRadius: 10,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: AppColors.black.withOpacity(0.20),
              offset: Offset(0, 3),
              blurRadius: 5,
              spreadRadius: -1,
            ),
          ],
        ),
        child: Icon(
          Icons.add,
          color: AppColors.white,
          size: 25,
        ),
      ),
    );
  }
}
