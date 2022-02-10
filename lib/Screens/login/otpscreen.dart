// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController controller;
  bool isButtonActive2 = true;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive2 = controller.text.isNotEmpty;
      setState(() => this.isButtonActive2 = isButtonActive2);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newAlign(context),
          Container(
            padding: paddingText,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textAlign('My code is..'),
                Padding(
                  padding: paddingSecondText,
                  child: Row(
                    children: [
                      const Text(
                        '2348102871334',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: color,
                            )),
                        child: const Center(
                          child: Text(
                            'Resend',
                            style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 15, top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const OtpTextFiled(),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: color,
                      onSurface: color,
                      primary: color,
                      maximumSize: const Size.fromHeight(45),
                      fixedSize: const Size.fromWidth(350),
                    ),
                    onPressed: isButtonActive2
                        ? () {
                            setState(() => isButtonActive2 = false);
                            controller.clear();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          }
                        : null,
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
