import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class TabOne extends StatelessWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                color: const Color(0xffFFFFFF),
                height: 120,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'My wife deprives me of sex atimes, any way out?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    Container(
                      color: const Color(0xffFFFFFF),
                      child: const TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Color(0xff6C63FF),
                        unselectedLabelColor: Color(0xff313131),
                        tabs: [
                          Tab(
                            child: Icon(
                              Icons.border_color,
                            ),
                          ),
                          Tab(
                            child: Icon(
                              Icons.wifi,
                            ),
                          ),
                          Tab(
                            child: Icon(Icons.group_add),
                          ),
                          Tab(
                            child: Icon(
                              Icons.keyboard_control_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          TabOneData(),
                          Icon(Icons.ac_unit),
                          Icon(Icons.ac_unit),
                          Icon(Icons.ac_unit)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )

          // const CircularProgressIndicator(backgroundColor: Color(0xffF0F0F0),),
          ),
    );
  }
}
