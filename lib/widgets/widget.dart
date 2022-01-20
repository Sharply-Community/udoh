// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class containerWidget extends StatelessWidget {
  final TextStyle textStyle;
  final String text;
  final IconData? icon;
  final Color colors;
  const containerWidget({
    required this.textStyle,
    required this.colors,
    required this.text,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: iconColorWhite,
            ),
            const SizedBox(
              width: 35,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class containerWidgetBlue extends StatelessWidget {
  final TextStyle textStyle;
  final String text;
  final IconData? icon;
  final Color colors;
  const containerWidgetBlue(
      {required this.textStyle,
      required this.colors,
      required this.text,
      this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: iconColor,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
