// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'Logo',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'Choose an account',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Text(
                  'to continue to Tinder',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LoginWidget(
                  background: Colors.white,
                  colorText: color,
                  text: 'A',
                  emailText1: 'Abdurrazzaq Abdulmuhsin',
                  emailText2: 'abdurrazzaqabdulmuhsin7@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginWidget(
                  background: Color(0xff6C63FF),
                  colorText: Colors.white,
                  text: 'F',
                  emailText1: 'Franklin Okolie',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginWidget(
                  background: Colors.white,
                  colorText: color,
                  text: 'A',
                  emailText1: 'Abdurrazzaq Abdulmuhsin',
                  emailText2: 'abdurrazzaqabdulmuhsin7@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginWidget(
                  background: Color(0xff6C63FF),
                  colorText: Colors.white,
                  text: 'F',
                  emailText1: 'Franklin Okolie',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginWidget(
                  background: Colors.white,
                  colorText: color,
                  text: 'O',
                  emailText1: 'Oladayor Habeeb',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesomeIcons.userCircle,
                        color: Colors.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add another account',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      Text(
                        "To continue, Google will share your name, email address, and profile picture wit Marriag. Before using this app,",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "review its privacy policy and terms of services.",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
