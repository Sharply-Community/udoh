import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/container_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
        enabled: !kReleaseMode, builder: (context) => const MarriageApp()),
  );
}

class MarriageApp extends StatelessWidget {
  const MarriageApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: const PageControllerPage(),
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
      children: <Widget>[
        const HomeScreen(),
        BlocProvider(
          create: (context) => ContainerCubit(),
          child: const IntroSliderPage(),
        ),
      ],
    );
  }
}
