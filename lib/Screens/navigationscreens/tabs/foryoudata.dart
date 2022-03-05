import 'package:flutter/material.dart';

import 'package:marriage/Screens/navigationscreens/answer/answerone.dart';
import 'package:marriage/Screens/navigationscreens/answer/answertwo.dart';
import 'package:marriage/exports.dart';

class ForYouData extends StatelessWidget {
  const ForYouData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
            child: Text('3 Answers'),
          ),
          const AnswerOne(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: color,
                  child: Text(
                    'M',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                  ),
                  height: 40,
                  width: 270,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a Comment...',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const AnswerTwo(),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: color,
                  child: Text(
                    'M',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                  ),
                  height: 40,
                  width: 270,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a Comment...',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
