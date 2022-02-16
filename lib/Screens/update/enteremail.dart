import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/controller_cubit.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({Key? key}) : super(key: key);

  @override
  _EnterEmailState createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            newAlign(context),
            textAlign('What\'s your email?'),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                  'Dont\'t lose access to your account, verify your email',
                  style: TextStyle(color: Colors.black38, fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 20,
              ),
              child: TextField(
                controller: _emailController,
                onChanged: (controller) {
                  final textController =
                      BlocProvider.of<ControllerCubit>(context);
                  textController.updateColor(controller);
                },
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: color, width: 3.0),
                  ),
                  hintText: "Email email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: color, width: 2.0),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
              child: BlocBuilder<ControllerCubit, ControllerState>(
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: color,
                      onSurface: color,
                      primary: color,
                      maximumSize: const Size.fromHeight(60),
                      fixedSize: const Size.fromWidth(350),
                    ),
                    onPressed: state.controllerColor
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                        create: (context) => ControllerCubit(),
                                        child: const UpdateEmail(),
                                      )),
                            );
                          }
                        : null,
                    child: const Text(
                      'CONTINUE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'OR',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleRegister()));
                },
                child: ContainerWidget(
                    heightSize: 60,
                    textStyle: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                    border: Border.all(
                        color: color, width: 1.0, style: BorderStyle.solid),
                    iconColors: Colors.pink,
                    icon: FontAwesomeIcons.google,
                    text: 'REGISTER WITH GOOGLE'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Verify instantly by connecting your google account',
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
