import 'package:flutter/material.dart';
import 'package:raro_journal/src/modules/home/home_screen.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/widgets/journal_widget.dart';
import 'package:raro_journal/src/shared/widgets/raro_academy_widget.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _topAnimationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
  );

  late final AnimationController _bottomAnimationController =
      AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
  );

  late Animation<double> topAnimation;
  late Animation<double> bottomAnimation;

  @override
  void initState() {
    super.initState();
    topAnimation =
        Tween(begin: -500.0, end: 0.0).animate(_topAnimationController);
    bottomAnimation =
        Tween(begin: 500.0, end: 25.0).animate(_bottomAnimationController);

    _topAnimationController.forward();
    _bottomAnimationController.forward().whenCompleteOrCancel(() {
      Future.delayed(Duration(seconds: 1)).then((value) => Navigator.of(context)
          .pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen())));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _topAnimationController.dispose();
    _bottomAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.cyanToPurple,
        ),
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _topAnimationController,
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset: Offset(Alignment.topCenter.x, topAnimation.value),
                  child: child,
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: JournalWidget(),
              ),
            ),
            AnimatedBuilder(
              animation: _bottomAnimationController,
              builder: (BuildContext context, Widget? child) {
                return Transform.translate(
                  offset:
                      Offset(Alignment.bottomCenter.x, bottomAnimation.value),
                  child: child,
                );
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RaroAcademyWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
