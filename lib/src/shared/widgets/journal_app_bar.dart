import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/constants/app_enums.dart';

class JournalAppBar extends StatelessWidget {
  final colorType color;
  const JournalAppBar({Key? key, this.color = colorType.light})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return color == colorType.light
        ? Container(
            color: AppColors.transparent,
            child: Container(
              child: Image.asset('assets/images/logo.png'),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              gradient: AppColors.cyanToPurple,
            ),
            child: Container(
              child: Image.asset('assets/images/logo.png'),
            ),
          );
  }
}
