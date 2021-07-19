import 'package:flutter/material.dart';
import 'package:raro_journal/src/modules/home/home_screen.dart';
import 'package:raro_journal/src/modules/splash/splash_screen.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          isAlwaysShown: true,
          interactive: true,
          radius: Radius.circular(360),
          showTrackOnHover: true,
          thumbColor:
              MaterialStateProperty.all(AppColors.purpleThumb.withOpacity(0.7)),
          thickness: MaterialStateProperty.all(7.0),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
