import 'package:flutter/material.dart';

class ContainerTwo extends StatelessWidget {
  final String text;
  final ImageProvider image;
  final IconData icon;
  final String string;
  final Color color;
  const ContainerTwo(
      {Key? key,
      required this.image,
      required this.text,
      required this.string,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 120,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: CircleAvatar(child: Image(image: image)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(string)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 55, left: 20),
                child: Icon(
                  icon,
                  size: 35,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
