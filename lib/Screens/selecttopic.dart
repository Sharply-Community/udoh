import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

enum selected { active, inActive }

class SelectTopic extends StatefulWidget {
  const SelectTopic({Key? key}) : super(key: key);

  @override
  _SelectTopicState createState() => _SelectTopicState();
}

class _SelectTopicState extends State<SelectTopic> {
  final activeSelectedColor = const Color(0xff313131);
  final inActiveSelectedColor = const Color(0xffFFFFFF);
  selected? selectedColor;

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
          InkWell(
              onTap: () {
                selectedColor = selected.active;
              },
              child: ListContainer('Finance'))
        ],
      )),
    );
  }

  Widget ListContainer(String text) {
    return Container(
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedColor == selected.active
                ? activeSelectedColor
                : inActiveSelectedColor,
            width: 2.0,
          )),
      child: Center(
        child: Text(text,
            style: const TextStyle(
                color: Color(0xff313131), fontWeight: FontWeight.bold)),
      ),
    );
  }
}
