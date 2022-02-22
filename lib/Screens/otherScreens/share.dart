import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/feelings_cubit.dart';
import 'package:sizer/sizer.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF0F0F0),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      FontAwesomeIcons.times,
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => FeelingsCubit(),
                                    child: const SharedReweet(),
                                  )));
                    },
                    child: Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xff6C63FF),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Share',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: color,
                    child: Text(
                      'M',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(FontAwesomeIcons.play),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xffFFFFFF), width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.groups),
                        Text('Your followers'),
                        Icon(FontAwesomeIcons.chevronDown)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.white54,
              margin: const EdgeInsets.only(top: 30, right: 10, left: 10),
              child: TextField(
                textAlign: TextAlign.start,
                controller: _controller,
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.pinkAccent, width: 1.0)),
                    hintText: 'Say something about this....'),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 390,
                  width: 400.w,
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 15,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 20,
                                child: Image.asset('assets/unsplash3.png'),
                              ),
                            ),
                            const Text('Joshua Gabriel')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                        child: ExpandableText(
                          'Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very',
                          expandText: 'ShowMore',
                          collapseText: 'Showles',
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 128),
                  child: Row(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
