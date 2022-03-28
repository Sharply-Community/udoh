import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              color: const Color(0xffE5E5E5),
              height: 250,
              width: double.infinity,
              child: Column(
                children: const [
                  Center(
                    child: Icon(
                      Icons.grass_sharp,
                      size: 150,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Build your new spaces feed',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Follow some new spaces to start discovering hidden stories',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Text(
                    ' in your feed.',
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 280,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Discover Spacees',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Spaces that might attract you',
                          style: TextStyle(color: Color(0xff313131)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.5,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/unsplash10.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Love Mindset',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('1.5M follows, 108 posts in the last week'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Share your love experience',
                              style: TextStyle(color: Color(0xff313131)),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 1.5,
                      color: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/unsplash11.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Marriage',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text('2.5M followss. 108 posts in last week'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'For couples trying to make it work after an affairs',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
