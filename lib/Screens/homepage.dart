// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textColor = const Color(0xff6C63FF);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: const <Widget>[
            CircleAvatar(
              radius: 15,
              backgroundColor: color,
              child: Text(
                'M',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                'Home',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 240,
            ),
            Icon(
              Icons.search,
              color: color,
              size: 35,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: color,
        selectedFontSize: 10,
        unselectedFontSize: 5,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => setState(
          () => _currentIndex = index,
        ),
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "Question",
            icon: Icon(FontAwesomeIcons.question),
          ),
          BottomNavigationBarItem(label: "Groups", icon: Icon(Icons.group)),
          BottomNavigationBarItem(
              label: "Notification", icon: Icon(Icons.notification_add)),
          BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset('assets/unsplash.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Loving World',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Folow',
                              style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Posted by Richard Joseph Strachan',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Jan 3',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.cancel)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      'Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very, Read More.'),
                ),
                Image(
                  image: AssetImage(
                    'assets/unsplash1.png',
                  ),
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
