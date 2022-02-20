import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF0F0F0),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FontAwesomeIcons.times),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        color: const Color(0xff6C63FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Share',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: color,
                    child: Text(
                      'M',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(FontAwesomeIcons.play),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xffFFFFFF), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.groups),
                        Text('Your followers'),
                        Icon(FontAwesomeIcons.chevronDown)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
