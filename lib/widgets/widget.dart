// ignore_for_file: camel_case_types, recursive_getters

import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class containerWidget extends StatelessWidget {
  final TextStyle textStyle;
  final double heightSize;
  final Border? border;
  final String text;
  final IconData? icon;
  final iconColors;
  final Color? colors;
  const containerWidget({
    required this.heightSize,
    this.iconColors,
    this.border,
    required this.textStyle,
    this.colors,
    required this.text,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: heightSize,
        width: double.infinity,
        decoration: BoxDecoration(
          border: border,
          color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: iconColors,
            ),
            const SizedBox(
              width: 35,
            ),
            Center(
              child: Text(
                text,
                style: textStyle,
              ),
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
