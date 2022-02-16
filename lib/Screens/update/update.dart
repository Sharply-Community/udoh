import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/logic/cubit/controller_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:marriage/exports.dart';

class UpdateEmail extends StatefulWidget {
  const UpdateEmail({Key? key}) : super(key: key);

  @override
  _UpdateEmailState createState() => _UpdateEmailState();
}

class _UpdateEmailState extends State<UpdateEmail> {
  final TextEditingController _emailUpdate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          newAlign(context),
          textAlign('My Firstname is...'),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
            child: SizedBox(
              height: 85,
              width: 100.w,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: TextField(
                  controller: _emailUpdate,
                  onChanged: (controller) {
                    final textController =
                        BlocProvider.of<ControllerCubit>(context);
                    textController.updateColor(controller);
                  },
                  showCursor: false,
                  readOnly: false,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: color, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: color, width: 2.0),
                    ),
                    hintText: 'First Name',
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 25, right: 20, bottom: 20),
            child: Text(
                'This is how it will appear in marriage and you will not be able to change it'),
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
                                builder: (context) => const DatePage()),
                          );
                        }
                      : null,
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ));
            },
          )
        ],
      )),
    );
  }
}
