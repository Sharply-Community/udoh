import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MarriageApp());
}

class MarriageApp extends StatelessWidget {
  const MarriageApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: PageControllerPage(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Marriage",
            style: marriage,
          ),
        ),
      ),
    );
  }
}

class PageControllerPage extends StatelessWidget {
  const PageControllerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: const <Widget>[
        HomeScreen(),
        IntroSliderPage(),

      ],
    );
  }
}

