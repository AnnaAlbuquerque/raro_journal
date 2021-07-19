import 'package:flutter/material.dart';

class RaroAcademyWidget extends StatelessWidget {
  const RaroAcademyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          Image.asset('assets/images/powered_by.png'),
          SizedBox(height: 10),
          Image.asset('assets/images/raro_academy_logo.png'),
        ],
      ),
    );
  }
}
