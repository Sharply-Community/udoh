import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:marriage/exports.dart';
import 'package:sizer/sizer.dart';

enum Gender { login, register }

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({Key? key}) : super(key: key);

  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  Gender? selectedIndex;

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildImage(String assetName, [double width = 350]) {
      return Image.asset(
        'assets/$assetName',
        width: width,
      );
    }

    Widget buildFooter() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = Gender.login;
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Container(
                height: 55.0,
                width: 170.w,
                decoration: BoxDecoration(
                    color: selectedIndex == Gender.login
                        ? activeCardColor
                        : inActiveCardColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: color,
                    )),
                child: const Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = Gender.register;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScree()));
                });
              },
              child: Container(
                height: 55.0,
                width: 170.w,
                decoration: BoxDecoration(
                    color: selectedIndex == Gender.register
                        ? activeCardColor
                        : inActiveCardColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: color,
                    )),
                child: const Center(
                    child: Text(
                  'REGISTER',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      );
    }

    final pageDecoration = PageDecoration(
      titleTextStyle: const TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: color),
      bodyTextStyle: bodyStyle,
      pageColor: Colors.white,
      imagePadding: const EdgeInsets.all(15),
      descriptionPadding: const EdgeInsets.all(8).copyWith(bottom: 0),
    );

    List<PageViewModel> getPages() {
      return [
        PageViewModel(
            title: "Marriage",
            body: "Love recognizez no barriers. It jumps hurdles,"
                " leaps fences, penetrate walls to, arrive at"
                "its destination full of hope.",
            decoration: pageDecoration,
            image: _buildImage(
              'boarding.webp',
            ),
            footer: buildFooter()),
        PageViewModel(
          title: "Marriage",
          body: "A successful marriage requires falling in love"
              "many times, always with the same person.",
          decoration: pageDecoration,
          image: _buildImage('undraw_wedding.webp'),
          footer: buildFooter(),
        ),
        PageViewModel(
            title: "Marriage",
            body:
                "Love doesn’t just sit there, like a stone, it has to be made, "
                "like bread; remade all the time, made new.",
            decoration: pageDecoration,
            image: _buildImage('undraw_winners.webp'),
            footer: buildFooter()),
        PageViewModel(
            title: "Marriage",
            body: "A great marriage isn’t when the perfect "
                "couples comes together but when an imperfect couples "
                "leans to enjoy their differences,",
            decoration: pageDecoration,
            image: _buildImage('undraw_pure.webp'),
            footer: buildFooter()),
      ];
    }

    return IntroductionScreen(
      pages: getPages(),
      dotsDecorator: DotsDecorator(
          color: color,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeColor: color,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )),
      showNextButton: true,
      skip: const Text('Skip'),
      next: const Align(
        child: Icon(
          Icons.arrow_forward,
          color: color,
          size: 30,
        ),
        alignment: Alignment.centerRight,
      ),
      done: const Align(
        alignment: Alignment.centerRight,
        child: Text("Done",
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      onDone: () => _onIntroEnd(context),
    );
  }
}
