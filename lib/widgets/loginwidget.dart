import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final Color background;
  final String emailText1;
  final String emailText2;
  final Color colorText;
  final String text;
  const LoginWidget(
      {required this.emailText1,
      required this.emailText2,
      required this.background,
      required this.text,
      required this.colorText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: background,
            child: Text(
              text,
              style: TextStyle(
                color: colorText,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                emailText1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                emailText2,
                style: const TextStyle(color: Colors.white70),
              )
            ],
          ),
        ],
      ),
    );
  }
}
