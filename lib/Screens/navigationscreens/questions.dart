import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffF0F0F0),
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  color: const Color(0xffFFFFFF),
                  child: const TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: color,
                      unselectedLabelColor: Color(0xff313131),
                      tabs: [
                        Tab(
                          child: Text('For You'),
                        ),
                        Tab(
                          child: Text('Request'),
                        ),
                        Tab(
                          child: Text('Answer drate'),
                        ),
                      ]),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit),
                      Icon(Icons.ac_unit)
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
