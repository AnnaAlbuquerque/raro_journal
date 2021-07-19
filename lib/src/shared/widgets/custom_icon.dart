import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon}) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.black.withOpacity(0.54),
    );
  }
}
