import 'dart:math';
import 'package:flutter/material.dart';

class AppColors {
  static const Color pink = Color(0xFFF5487F);
  static const Color green = Color(0xFF58B368);
  static const Color purple = Color(0xFF343090);
  static const Color lightpurple = Color(0xFF8681FC);
  static const Color cyan = Color(0xFF44C2FD);
  static const Color yellow = Color(0xFFFAC736);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color purpleLowOpacity = Color(0xFFF1F0FE);
  static const Color transparent = Colors.transparent;
  static const Color grey = Colors.grey;

  static const LinearGradient cyanToPurple = LinearGradient(
    colors: [cyan, purple],
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.0),
    transform: GradientRotation(345 * pi / 180),
  );

  static const LinearGradient cyanToPurpleAppBar = LinearGradient(
    colors: [cyan, purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.55],
    transform: GradientRotation(50 * pi / 180),
  );

  static const LinearGradient whiteToPurple = LinearGradient(
    colors: [white, purpleLowOpacity],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.85, 1.0],
  );
}
