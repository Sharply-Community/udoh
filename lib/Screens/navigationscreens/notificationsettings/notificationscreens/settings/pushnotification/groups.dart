import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          const Headersetting(text: 'Groups'),
          const PushHeader(text: 'Group Invites'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Swith(
                text: 'Groups',
                string: 'Always notify me when someone sends an invite or ',
                text2: 'accepts my invitation to a Group',
                child: groupInviteSwitch()),
          ),
          const PushHeader(text: 'Group recommdation'),
          Switched(
              text: 'Group recommendation',
              string: 'Alwaus notify me about groups i might like',
              child: groupRecommendationSwitch()),
          const SizedBox(
            height: 5,
          ),
          const PushHeader(text: 'My Group'),
          Switched(
              text: 'New Post',
              string: 'Always notify me when someone wants to post on my group',
              child: newPostSwitch()),
          const PushHeader(text: 'Accepted Post'),
          Switched(
              text: 'Accepted Post',
              string:
                  'Always notify me when a post has been accepted into my group',
              child: acceptedPostSwitch())
        ],
      )),
    );
  }
}
