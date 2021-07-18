import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class JournalBottomBar extends StatefulWidget {
  const JournalBottomBar({Key? key}) : super(key: key);

  @override
  _JournalBottomBarState createState() => _JournalBottomBarState();
}

class _JournalBottomBarState extends State<JournalBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        BoxShadow(
          color: AppColors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 6,
          offset: Offset(0, 3),
        )
      ]),
      child: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset('assets/images/calendar.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/attached.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/heart.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/share.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/trash_can.png'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
