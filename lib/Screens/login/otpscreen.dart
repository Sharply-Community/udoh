import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/container_cubit.dart';
import 'package:marriage/logic/cubit/feelings_cubit.dart';
import 'package:marriage/logic/cubit/posts_cubit.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
          Container(
            padding: paddingText,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textAlign('My code is..'),
                Padding(
                  padding: paddingSecondText,
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
                Container(
                  padding: const EdgeInsets.only(right: 15, top: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const OtpTextFiled(),
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<ContainerCubit, ContainerState>(
                  builder: (context, state) {
                    return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: color,
                          onSurface: color,
                          primary: color,
                          maximumSize: const Size.fromHeight(45),
                          fixedSize: const Size.fromWidth(350),
                        ),
                        onPressed: state.changeColor
                            ? () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MultiBlocProvider(providers: [
                                              BlocProvider<FeelingsCubit>(
                                                  create:
                                                      (BuildContext context) =>
                                                          FeelingsCubit()),
                                              BlocProvider<PostsCubit>(
                                                  create:
                                                      (BuildContext context) =>
                                                          PostsCubit())
                                            ], child: const HomePage())));
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
      )),
    );
  }
}
