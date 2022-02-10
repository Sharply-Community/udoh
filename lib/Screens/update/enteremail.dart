// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({Key? key}) : super(key: key);

  @override
  _EnterEmailState createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  bool btnEnable = false;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(() {
      final btnEnable = _controller.text.isNotEmpty;
      setState(() => this.btnEnable = btnEnable);
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            newAlign(context),
            textAlign('What\'s your email?'),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                  'Dont\'t lose access to your account, verify your email',
                  style: TextStyle(color: Colors.black38, fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 20,
              ),
              child: TextField(
                controller: _controller,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: color, width: 3.0),
                  ),
                  hintText: "Email email",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: color, width: 3.5),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: color,
                  onSurface: color,
                  primary: color,
                  maximumSize: const Size.fromHeight(60),
                  fixedSize: const Size.fromWidth(350),
                ),
                onPressed: btnEnable
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateEmail()),
                        );
                        setState(() => btnEnable = false);
                        _controller.clear();
                      }
                    : null,
                child: Text(
                  'CONTINUE',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'OR',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleRegister()));
                },
                child: containerWidget(
                    heightSize: 60,
                    textStyle: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                    border: Border.all(
                        color: color, width: 1.0, style: BorderStyle.solid),
                    iconColors: Colors.pink,
                    icon: FontAwesomeIcons.google,
                    text: 'REGISTER WITH GOOGLE'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Verify instantly by connecting your google account',
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
