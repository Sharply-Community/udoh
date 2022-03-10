import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/Screens/navigationscreens/notificationsettings/notification.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/pagecontroller_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _screens = const [
    HomeScreens(),
    QuestionsScreen(),
    GroupScreen(),
    NotificationScreen(),
    SettingsScreen()
  ];
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
      bottomNavigationBar:
          BlocBuilder<PagecontrollerCubit, PagecontrollerState>(
        builder: (context, state) {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: color,
            selectedFontSize: 10,
            unselectedFontSize: 5,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: state.controller,
            onTap: (controller) {
              final pageIndex = BlocProvider.of<PagecontrollerCubit>(context);
              pageIndex.getPageController(controller);
            },
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                label: "Question",
                icon: Icon(FontAwesomeIcons.question),
              ),
              BottomNavigationBarItem(label: "Groups", icon: Icon(Icons.group)),
              BottomNavigationBarItem(
                  label: "Notification", icon: Icon(Icons.notification_add)),
              BottomNavigationBarItem(
                  label: "Settings", icon: Icon(Icons.settings))
            ],
          );
        },
      ),
      body: BlocBuilder<PagecontrollerCubit, PagecontrollerState>(
        builder: (context, state) {
          return _screens[state.controller];
        },
      ),
    );
  }
}
