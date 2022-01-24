// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:marriage/exports.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);

  @override
  _PhoneLoginScreenState createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  late TextEditingController controller;
  bool isButtonActive = true;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My number is',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: controller,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: color, width: 2.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                const BorderSide(color: color, width: 5.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '+234',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: Text(
                  'When you tap continue, marriage will send you a text with verification code.'
                  ' Message and data rates may apply. The verified phone number can be used to login.'
                  'Learn what happens when your number changes.'),
            ),
            SizedBox(
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
                onPressed: isButtonActive
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                        setState(() => isButtonActive = false);
                        controller.clear();
                      }
                    : null,
                child: Text(
                  'Continue',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
