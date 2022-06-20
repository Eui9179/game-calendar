import 'package:flutter/material.dart';

class HomeHeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffffffff),
      centerTitle: true,
      title: Text(
        'DOR 캘린더',
        style: TextStyle(
            color: Color(0xff1f1f1f)
        ),
      ),
      elevation: 0.1,
    );
  }
}
