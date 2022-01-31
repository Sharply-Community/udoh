import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

enum Select { male, female }

class ChooseGender extends StatefulWidget {
  const ChooseGender({Key? key}) : super(key: key);

  @override
  _ChooseGenderState createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {
  final activeColorBlack = const Color(0xff313131);
  final inActiveColorBlack = const Color(0xffF0F0F0);
  Select? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: [
              newAlign(context),
              textAlign('I Am a'),
              const Text('Choose your gender'),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = Select.male;
                  });
                },
                child: Container(
                  height: 52.0,
                  width: 300,
                  decoration: BoxDecoration(
                      color: selectedIndex == Select.male
                          ? activeColorBlack
                          : inActiveColorBlack,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: activeColorBlack,
                      )),
                  child: const Center(
                      child: Text(
                    'MAN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = Select.female;
                  });
                },
                child: Container(
                  height: 52.0,
                  width: 300,
                  decoration: BoxDecoration(
                      color: selectedIndex == Select.female
                          ? activeColorBlack
                          : inActiveColorBlack,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: activeColorBlack,
                      )),
                  child: const Center(
                      child: Text(
                    'WOMAN',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
