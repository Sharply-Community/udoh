import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class YouAndYourNetwork extends StatelessWidget {
  const YouAndYourNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          const Headersetting(text: 'You & Your NetWork'),
          const PushHeader(text: 'Your NetWork'),
          Switched(
              text: 'New Followers',
              string: 'Always notify me of new followers',
              child: newFollowersSwitch()),
          const SizedBox(
            height: 5,
          ),
          const PushHeader(text: 'People you follow'),
          Switched(
              text: 'Answer highlights',
              string:
                  'Always notify me when someone i follow answers a question',
              child: answerHighLightSwitch()),
          const SizedBox(
            height: 3,
          ),
          Switched(
              text: 'Questions highelights',
              string: 'Always notify me when someone i follow asks a question',
              child: questionHighLightSwitch())
        ],
      )),
    );
  }
}
