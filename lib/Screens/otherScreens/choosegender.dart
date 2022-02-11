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
  final activeTextColor = const Color(0xffFFFFFF);
  final inActiveTextColor = const Color(0xff313131);
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
              const Padding(
                padding: EdgeInsets.only(left: 30, bottom: 50),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Choose your gender')),
              ),
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
                  child: Center(
                      child: Text(
                    'MAN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == Select.male
                            ? activeTextColor
                            : inActiveTextColor),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
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
                  child: Center(
                      child: Text(
                    'WOMAN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == Select.female
                            ? activeTextColor
                            : inActiveTextColor),
                  )),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: color,
                  primary: color,
                  maximumSize: const Size.fromHeight(45),
                  fixedSize: const Size.fromWidth(350),
                ),
                onPressed: selectedIndex != null
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectTopic()));
                      }
                    : null,
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
