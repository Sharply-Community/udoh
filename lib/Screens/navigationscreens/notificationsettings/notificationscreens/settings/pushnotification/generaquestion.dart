import 'package:flutter/material.dart';
import 'package:marriage/Screens/navigationscreens/notificationsettings/notificationscreens/reusable.dart';

class GeneralQuestions extends StatelessWidget {
  const GeneralQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Headersetting(text: 'General Questions & Answer'),
            const PushHeader(text: 'Questions'),
            Switched(
                text: 'Requests',
                string:
                    'Always notify me when someone needs me to answer a question',
                child: requestQues()),
            const SizedBox(
              height: 5,
            ),
            Swith(
                text: 'New Answer',
                string:
                    'Always notify me when there are new answers to questions I',
                text2: 'asked or follows',
                child: newAnswer())
          ],
        ),
      ),
    );
  }
}
