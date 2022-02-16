import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/controller_cubit.dart';

class RegisterOtp extends StatefulWidget {
  const RegisterOtp({Key? key}) : super(key: key);

  @override
  _RegisterOtpState createState() => _RegisterOtpState();
}

class _RegisterOtpState extends State<RegisterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newAlign(context),
            textAlign('My Code is...'),
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
              ),
              child: Row(
                children: [
                  const Text(
                    '2348102871334',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: color,
                        )),
                    child: const Center(
                      child: Text(
                        'Resend',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: OtpTextFiled(),
                  ),
                  const SizedBox(
                    height: 20,
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
                                        child: const EnterEmail(),
                                      ),
                                    ),
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
          ],
        ),
      ),
    );
  }
}
