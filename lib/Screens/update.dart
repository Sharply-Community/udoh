// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/constants/constant.dart';
import 'package:sizer/sizer.dart';

class UpdateEmail extends StatefulWidget {
  const UpdateEmail({Key? key}) : super(key: key);

  @override
  _UpdateEmailState createState() => _UpdateEmailState();
}

class _UpdateEmailState extends State<UpdateEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: paddingText,
            child: const Text(
              'My first name is',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              height: 85,
              width: 100.w,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: TextField(
                  showCursor: false,
                  readOnly: false,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: color, width: 2.0),
                    ),
                    hintText: 'First Name',
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
