import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/logic/cubit/commentcubit_cubit.dart';
import 'package:marriage/logic/cubit/messagecubit_cubit.dart';
import 'package:marriage/logic/cubit/taggedcubit_cubit.dart';

import '../../reusable.dart';
import 'message.dart';

class PushNotificationScreen extends StatelessWidget {
  const PushNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(
          children: [
            const Headersetting(
              text: 'Push Notification',
            ),
            const PushHeader(text: 'Channels'),
            const SettingsWidget(
              text: 'General Questions & Answer',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MultiBlocProvider(providers: [
                              BlocProvider<MessagecubitCubit>(
                                  create: (BuildContext context) =>
                                      MessagecubitCubit()),
                              BlocProvider<CommentcubitCubit>(
                                  create: (BuildContext context) =>
                                      CommentcubitCubit()),
                              BlocProvider<TaggedcubitCubit>(
                                create: (BuildContext context) =>
                                    TaggedcubitCubit(),
                              )
                            ], child: const SettingWidget())));
              },
              child: const SettingsWidget(
                text: 'Messages, Comments & Tagged',
              ),
            ),
            const SettingsWidget(
              text: 'Groups',
            ),
            const SettingsWidget(
              text: 'You & Your Network',
            ),
            const SizedBox(
              height: 6,
            ),
            const PushHeader(text: 'My Content'),
            const SettingsWidget(
              text: 'Answer',
            ),
            const SettingsWidget(text: 'Questions & Sessions'),
            const SettingsWidget(text: 'Votes'),
            const SettingsWidget(text: 'Sahre With friends & family'),
            const SizedBox(
              height: 6,
            ),
            const PushHeader(text: 'From Marriage'),
            const SettingsWidget(text: 'Marriage feeds'),
            const SettingsWidget(text: 'Your Attention')
          ],
        )),
      ),
    );
  }
}
