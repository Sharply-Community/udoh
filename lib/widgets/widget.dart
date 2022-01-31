// ignore_for_file: camel_case_types, recursive_getters, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class DateButtonWidget extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onClicked;
  const DateButtonWidget(
      {required this.title,
      required this.text,
      required this.onClicked,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: title,
        child: ButtonWidget(
          text: text,
          onClicked: onClicked,
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  const ButtonWidget({required this.text, required this.onClicked, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: const Size.fromHeight(45),
        fixedSize: const Size.fromWidth(350),
        primary: color,
      ),
      onPressed: onClicked,
      child: FittedBox(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget child;
  const HeaderWidget({required this.title, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: color, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          child,
        ],
      );
}

Align newAlign(BuildContext context) {
  return Align(
    alignment: Alignment.topLeft,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Padding(
        padding: aligntext,
        child: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Align textAlign(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, bottom: 15),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
