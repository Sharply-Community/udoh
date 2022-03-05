import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class AnswerDraft extends StatelessWidget {
  const AnswerDraft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.hardware_outlined,
          size: 120,
        ),
        const Text('No Answer draft',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 25, right: 25),
          child:
              Text('Start writing answers by finding questions to answer in'),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: Text('Questions for You'),
        ),
        Container(
          height: 40,
          width: 175,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              'See Top Questions For You',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
