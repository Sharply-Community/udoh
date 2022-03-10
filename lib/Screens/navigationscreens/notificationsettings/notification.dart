import 'package:flutter/material.dart';
import 'package:marriage/Screens/navigationscreens/notificationsettings/notificationscreens/container1.dart';
import 'package:marriage/Screens/navigationscreens/notificationsettings/notificationscreens/container2.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mark All As Read',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(onTap: () {}, child: const Icon(Icons.settings))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                ContainerOne(
                    image: AssetImage('assets/unsplash8.png'),
                    text: 'Loving and Amazing World. Posted in a Space\n'
                        ' you might like. January 30',
                    string: 'I\'m 32. Currently jobless, married with two \n'
                        'kids, a degree and no job, my husband want \n'
                        'me....',
                    icon: Icons.more_horiz,
                    color: Color(0xffF0F0F0)),
                ContainerOne(
                    image: AssetImage('assets/unsplash7.png'),
                    text: 'Loving and Amazing World. Posted in a Space\n'
                        ' you might like. January 30',
                    string: 'I\'m 32. Currently jobless, married with two \n'
                        'kids, a degree and no job, my husband want \n'
                        'me....',
                    icon: Icons.more_horiz,
                    color: Color(0xffF0F0F0)),
                ContainerTwo(
                    image: AssetImage('assets/unsplash5.png'),
                    text: 'Loving and Amazing World. Posted in a Space\n'
                        'you might like. January 30',
                    string: 'I\'m 32. Currently jobless, married with two \n'
                        'kids, a degree and no job, my husband want \n'
                        'me....',
                    icon: Icons.more_horiz,
                    color: Colors.white),
                ContainerTwo(
                    image: AssetImage('assets/unsplash6.png'),
                    text: 'Loving and Amazing World. Posted in a Space\n'
                        'you might like. January 30',
                    string: 'I\'m 32. Currently jobless, married with two \n'
                        'kids, a degree and no job, my husband want \n'
                        'me....',
                    icon: Icons.more_horiz,
                    color: Colors.white),
                ContainerOne(
                    image: AssetImage('assets/unsplash9.png'),
                    text: 'Loving and Amazing World. Posted in a Space\n'
                        ' you might like. January 30',
                    string: 'I\'m 32. Currently jobless, married with two \n'
                        'kids, a degree and no job, my husband want \n'
                        'me....',
                    icon: Icons.more_horiz,
                    color: Color(0xffF0F0F0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
