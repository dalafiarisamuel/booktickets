import 'package:booktickets/themes/app_layout.dart';
import 'package:booktickets/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12),
          horizontal: AppLayout.getHeight(10)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFbfc2df)),
          Gap(AppLayout.getHeight(10)),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}
