import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

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
        const Text('Answer Request',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20, left: 12, right: 12),
          child: Text(
              'Ask for answers from other users by clicking request Answer on a question. Requests you recieve will show up here.'),
        ),
        Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              'See Top Questions',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
