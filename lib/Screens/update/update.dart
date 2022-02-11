import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:marriage/exports.dart';

class UpdateEmail extends StatefulWidget {
  const UpdateEmail({Key? key}) : super(key: key);

  @override
  _UpdateEmailState createState() => _UpdateEmailState();
}

class _UpdateEmailState extends State<UpdateEmail> {
  late TextEditingController _controller;
  bool btnButton = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      final btnButton = _controller.text.isNotEmpty;
      setState(() => this.btnButton = btnButton);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          newAlign(context),
          textAlign('My Firstname is...'),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: SizedBox(
              height: 85,
              width: 100.w,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: TextField(
                  controller: _controller,
                  showCursor: false,
                  readOnly: false,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: color, width: 2.0),
                    ),
                    hintText: 'First Name',
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 25, right: 20, bottom: 20),
            child: Text(
                'This is how it will appear in marriage and you will not be able to change it'),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: color,
                onSurface: color,
                primary: color,
                maximumSize: const Size.fromHeight(45),
                fixedSize: const Size.fromWidth(350),
              ),
              onPressed: btnButton
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DatePage()),
                      );
                      setState(() => btnButton = false);
                      _controller.clear();
                    }
                  : null,
              child: const Text(
                'CONTINUE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      )),
    );
  }
}
