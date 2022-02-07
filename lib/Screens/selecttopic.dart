// ignore_for_file: avoid_unnecessary_containers, prefer_is_empty

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';

enum selected { active, inActive }

class SelectTopic extends StatefulWidget {
  const SelectTopic({Key? key}) : super(key: key);

  @override
  _SelectTopicState createState() => _SelectTopicState();
}

class _SelectTopicState extends State<SelectTopic> {
  var btnColor = const Color(0xffE5E5E5);
  selected? selectedColor;
  List<String> tags = [];
  List<String> interest = [
    'Finance',
    'Sex',
    'Age',
    'Jealousy',
    'Food',
    'Boredom',
    'Child Birth',
    'Zodiac Sign',
    'Language',
    'Communication',
    'Religion',
    'Cooking',
    'Sport',
    'Foodie',
    'Fashion',
    'Games'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          newAlign(context),
          textAlign('Interest'),
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 50),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'By adding it your profile, you can let everyone know what you\'re enthusiastic about')),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChipsChoice<String>.multiple(
                  value: tags,
                  onChanged: (val) {
                    setState(() {
                      tags = val;
                      if (tags.length == 3) {
                        btnColor = color;
                      } else {
                        btnColor;
                      }
                    });
                  },
                  choiceItems: C2Choice.listFrom<String, String>(
                    source: interest,
                    value: (i, v) => v,
                    label: (i, v) => v,
                  ),
                  wrapped: true,
                  choiceStyle: const C2ChoiceStyle(
                    showCheckmark: false,
                    color: color,
                    brightness: Brightness.dark,
                    borderRadius: BorderRadius.all(
                      Radius.circular((10)),
                    ),
                  ),
                  choiceActiveStyle: const C2ChoiceStyle(color: color),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: btnColor,
              primary: btnColor,
              maximumSize: const Size.fromHeight(45),
              fixedSize: const Size.fromWidth(350),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'CONTINUE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    tags.length <= 0
                        ? "0"
                        : tags.length > 3
                            ? "3/3"
                            : "(${tags.length}/3)",
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
