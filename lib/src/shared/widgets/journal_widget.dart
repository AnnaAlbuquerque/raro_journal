import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class JournalWidget extends StatelessWidget {
  const JournalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/book.png'),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "journal",
                  style: TextStyle(
                    color: AppColors.white,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 72,
                    letterSpacing: -0.5,
                    shadows: [
                      Shadow(
                        color: AppColors.black.withOpacity(0.25),
                        offset: Offset(0.0, 4.0),
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  "YOUR ACADEMY'S BEST FRIEND",
                  style: TextStyle(
                    color: AppColors.white,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
