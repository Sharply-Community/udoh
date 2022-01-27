import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class RegisterOtp extends StatefulWidget {
  const RegisterOtp({Key? key}) : super(key: key);

  @override
  _RegisterOtpState createState() => _RegisterOtpState();
}

class _RegisterOtpState extends State<RegisterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: aligntext,
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            padding: paddingText,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My code is..',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
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
                _textFiledOTP(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: color,
                      onSurface: color,
                      primary: color,
                      maximumSize: const Size.fromHeight(45),
                      fixedSize: const Size.fromWidth(350),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EnterEmail(),
                        ),
                      );
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _textFiledOTP() {
    return Container(
      width: double.infinity,
      child: OTPTextField(
        length: 6,
        width: 50,
        keyboardType: TextInputType.number,
        // fieldWidth: 30,
        otpFieldStyle: OtpFieldStyle(
          backgroundColor: Colors.white,
          borderColor: color,
        ),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        textFieldAlignment: MainAxisAlignment.spaceBetween,
        fieldStyle: FieldStyle.underline,
        onChanged: (pin) {
          print("Successful:" + pin);
        },
        onCompleted: (value) {
          print("Successful:" + value);
        },
      ),
    );
  }
}
