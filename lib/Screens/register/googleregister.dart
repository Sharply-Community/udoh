import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';

class GoogleRegister extends StatelessWidget {
  const GoogleRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    'Logo',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: const [
                      Text(
                        'Choose an account',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'to continue to Tinder',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage())),
                  child: const LoginWidget(
                    background: Colors.white,
                    colorText: color,
                    text: 'A',
                    emailText1: 'Abdurrazzaq Abdulmuhsin',
                    emailText2: 'abdurrazzaqabdulmuhsin7@gmail.com',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LoginWidget(
                  background: Color(0xff6C63FF),
                  colorText: Colors.white,
                  text: 'F',
                  emailText1: 'Franklin Okolie',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LoginWidget(
                  background: Colors.white,
                  colorText: color,
                  text: 'A',
                  emailText1: 'Abdurrazzaq Abdulmuhsin',
                  emailText2: 'abdurrazzaqabdulmuhsin7@gmail.com',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LoginWidget(
                  background: Color(0xff6C63FF),
                  colorText: Colors.white,
                  text: 'F',
                  emailText1: 'Franklin Okolie',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LoginWidget(
                  background: Colors.white,
                  colorText: color,
                  text: 'O',
                  emailText1: 'Oladayor Habeeb',
                  emailText2: 'Franklinokolie10@gmail.com',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white54,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        FontAwesomeIcons.userCircle,
                        color: Colors.white,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Add another account',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.white,
                    height: 25,
                    thickness: 2.0,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: const [
                      Text(
                        "To continue, Google will share your name, email address, and profile picture wit Marriag. Before using this app,",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "review its privacy policy and terms of services.",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
