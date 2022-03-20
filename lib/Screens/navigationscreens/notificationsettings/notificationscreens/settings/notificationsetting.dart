import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

import 'pushnotification/pushnotification.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [
                const Headersetting(
                  text: 'Notification Settings',
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PushNotificationScreen()));
                  },
                  child: const SettingsWidget(
                    text: 'PushNotification',
                  ),
                ),
                const SettingsWidget(
                  text: 'Email',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
