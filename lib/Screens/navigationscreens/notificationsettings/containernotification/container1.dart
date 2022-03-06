import 'package:flutter/material.dart';

class ContainerOne extends StatelessWidget {
  final String text;
  final IconData icon;
  final String string;
  final Color color;
  const ContainerOne(
      {Key? key,
      required this.text,
      required this.string,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/unsplash8.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(text),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(string)
                ],
              ),
              Icon(icon)
            ],
          )
        ],
      ),
    );
  }
}
