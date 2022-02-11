import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:marriage/exports.dart';

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
            newAlign(context),
            textAlign('My Number is...'),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                maxLength: 11,
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
                      borderSide: const BorderSide(color: color, width: 2.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: color, width: 5.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '+234',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 5),
              child: Text(
                  'When you tap continue, marriage will send you a text with verification code.'
                  ' Message and data rates may apply. The verified phone number can be used to login.'
                  'Learn what happens when your number changes.'),
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
                onPressed: isButtonActive
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                        setState(() => isButtonActive = false);
                        controller.clear();
                      }
                    : null,
                child: const Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
