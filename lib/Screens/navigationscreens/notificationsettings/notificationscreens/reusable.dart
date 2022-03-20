import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/logic/cubit/commentcubit_cubit.dart';
import 'package:marriage/logic/cubit/messagecubit_cubit.dart';
import 'package:marriage/logic/cubit/taggedcubit_cubit.dart';

class SettingsWidget extends StatelessWidget {
  final String text;
  const SettingsWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      color: Colors.white,
      height: 50,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Text(text)),
              const Center(child: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
      ),
    );
  }
}

class Headersetting extends StatelessWidget {
  final String text;
  const Headersetting({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PushHeader extends StatelessWidget {
  final String text;
  const PushHeader({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Switched extends StatelessWidget {
  final String text;
  final String string;
  final Widget child;
  const Switched(
      {required this.text, required this.string, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(text,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 15))),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(string,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black)),
                ),
              ],
            ),
            Center(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}

Widget messageSwitch() => BlocBuilder<MessagecubitCubit, MessagecubitState>(
      builder: (context, state) {
        return Transform.scale(
          scale: 1.5,
          child: Switch.adaptive(
              value: state.message,
              onChanged: (message) {
                final messageToggleSwitch =
                    BlocProvider.of<MessagecubitCubit>(context);
                messageToggleSwitch.messageToggle(message);
              }),
        );
      },
    );

Widget commentSwitch() => BlocBuilder<CommentcubitCubit, CommentcubitState>(
      builder: (context, state) {
        return Transform.scale(
          scale: 1.5,
          child: Switch.adaptive(
              value: state.comment,
              onChanged: (comment) {
                final commentToggleSwitch =
                    BlocProvider.of<CommentcubitCubit>(context);
                commentToggleSwitch.commentToggle(comment);
              }),
        );
      },
    );

Widget taggedSwitch() => BlocBuilder<TaggedcubitCubit, TaggedcubitState>(
      builder: (context, state) {
        return Transform.scale(
          scale: 1.5,
          child: Switch.adaptive(
              value: state.tagged,
              onChanged: (tagged) {
                final taggedToggleSwitch =
                    BlocProvider.of<TaggedcubitCubit>(context);
                taggedToggleSwitch.taggedToggle(tagged);
              }),
        );
      },
    );
