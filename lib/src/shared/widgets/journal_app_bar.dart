import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/constants/app_enums.dart';

class JournalAppBar extends StatelessWidget {
  const JournalAppBar({Key? key, this.color = colorType.light})
      : super(key: key);

  final colorType color;

  @override
  Widget build(BuildContext context) {
    return color == colorType.light
        ? Container(
            color: AppColors.transparent,
            child: Container(
              child: Image.asset(
                'assets/images/logo.png',
                alignment: Alignment.bottomCenter,
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              gradient: AppColors.cyanToPurpleAppBar,
            ),
            child: Container(
              child: Image.asset('assets/images/logo_white.png'),
              alignment: Alignment.bottomCenter,
            ),
          );
  }
}
