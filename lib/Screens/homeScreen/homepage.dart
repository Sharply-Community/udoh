import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

enum likedPost { like, unlike }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  likedPost? likePost;
  final textColor = const Color(0xff6C63FF);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 450,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
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
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: ExpandableText(
                      'Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very,',
                      expandText: '..showMore',
                      collapseText: 'ShowLess',
                      linkColor: Color(0xff313131),
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/unsplash1.png',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/unsplash2.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 30,
                            width: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffE5E5E5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: InkWell(
                                      onTap: () => setState(() {
                                            likePost = likedPost.like;
                                          }),
                                      child: Icon(
                                        Icons.thumb_up_alt_sharp,
                                        color: likePost == likedPost.like
                                            ? Colors.blue
                                            : Colors.black,
                                      )),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  '2.3K',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const VerticalDivider(
                                  indent: 5,
                                  endIndent: 5,
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                    onTap: () => setState(
                                          () {
                                            likePost = likedPost.unlike;
                                          },
                                        ),
                                    child: Icon(
                                      Icons.thumb_down_alt,
                                      color: likePost == likedPost.unlike
                                          ? Colors.blue
                                          : Colors.black,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('70',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Icon(Icons.autorenew),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('7',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(Icons.maps_ugc_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('21',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(left: 80),
                          child: Icon(Icons.share),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
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
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: ExpandableText(
                      'Bob Marley was once asked if there was a perfect woman.'
                      'And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very',
                      expandText: 'showMore',
                      collapseText: 'showLess',
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 30,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffE5E5E5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: InkWell(
                                    onTap: () => setState(() {
                                          likePost = likedPost.like;
                                        }),
                                    child: Icon(
                                      Icons.thumb_up_alt_sharp,
                                      color: likePost == likedPost.like
                                          ? Colors.blue
                                          : Colors.black,
                                    )),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                '2.3K',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const VerticalDivider(
                                indent: 5,
                                endIndent: 5,
                                thickness: 2,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                  onTap: () => setState(
                                        () {
                                          likePost = likedPost.unlike;
                                        },
                                      ),
                                  child: Icon(
                                    Icons.thumb_down_alt,
                                    color: likePost == likedPost.unlike
                                        ? Colors.blue
                                        : Colors.black,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('70',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Icon(Icons.autorenew),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('7',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(Icons.maps_ugc_outlined),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('21',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Icon(Icons.share),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
