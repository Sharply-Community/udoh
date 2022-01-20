// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        color: color,
        height: 200,
        width: double.infinity,
        child: LoginWidget(
          text: 'A',
          emailText1: 'Abdurrazzaq Abdulmuhsin',
          emailText2: 'abdurrazzaqabdulmuhsin7@gmail.com',
          color: Colors.white,
        ),
      ),
    );
  }
}
