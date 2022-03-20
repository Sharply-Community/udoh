import 'package:flutter/material.dart';

import '../../reusable.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Headersetting(
              text: 'Messsages, Comments & Tagged',
            ),
            const PushHeader(text: 'Messages'),
            Switched(
              text: 'Messages',
              string: 'Always notify me when someone sends me a direct message',
              child: messageSwitch(),
            ),
            const SizedBox(
              height: 5,
            ),
            const PushHeader(text: 'Comments'),
            Switched(
              text: 'Comments',
              string: 'Always notify me when someone comments on my post',
              child: commentSwitch(),
            ),
            const SizedBox(
              height: 5,
            ),
            const PushHeader(text: 'Tagged'),
            Switched(
              text: 'Tagged',
              string: 'Always notify me when someone tagged me to a post ',
              child: taggedSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
