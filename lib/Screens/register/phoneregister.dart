import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:flutter/services.dart';
import 'package:marriage/logic/cubit/controller_cubit.dart';

class PhoneRegister extends StatefulWidget {
  const PhoneRegister({Key? key}) : super(key: key);

  @override
  _PhoneRegisterState createState() => _PhoneRegisterState();
}

class _PhoneRegisterState extends State<PhoneRegister> {
  final TextEditingController _phoneRegister = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            newAlign(context),
            textAlign('My Number is...'),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _phoneRegister,
                keyboardType: TextInputType.number,
                onChanged: (controller) {
                  final onboardingCubit =
                      BlocProvider.of<ControllerCubit>(context);
                  onboardingCubit.updateColor(controller);
                },
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    hintText: "08102871334",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: color, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: color, width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '+234',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 20),
              child: Text(
                  'When you tap continue, marriage will send you a text with verification code.'
                  ' Message and data rates may apply. The verified phone number can be used to login.'
                  'Learn what happens when your number changes.'),
            ),
            BlocBuilder<ControllerCubit, ControllerState>(
              builder: (context, state) {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: color,
                      onSurface: color,
                      primary: color,
                      maximumSize: const Size.fromHeight(45),
                      fixedSize: const Size.fromWidth(350),
                    ),
                    onPressed: state.controllerColor
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                        create: (context) => ControllerCubit(),
                                        child: const RegisterOtp(),
                                      )),
                            );
                          }
                        : null,
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
