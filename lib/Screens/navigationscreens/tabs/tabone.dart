import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                'My wife deprives me of sex atimes, any way out?',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.create),
                        Text(
                          'Answer',
                          style: TextStyle(color: Color(0xff6C63FF)),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(Icons.wifi),
                      Text(
                        'Fellow',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.group_add),
                      Text(
                        'Request',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.keyboard_control_outlined),
                      Text(
                        'More',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    )

        // const CircularProgressIndicator(backgroundColor: Color(0xffF0F0F0),),
        );
  }
}
