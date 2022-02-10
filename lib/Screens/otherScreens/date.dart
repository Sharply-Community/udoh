import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';

class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime? date;

  String getText() {
    if (date == null) {
      return 'Select Date';
    } else {
      return '${date!.month}/${date!.day}/${date!.year}';
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            newAlign(context),
            textAlign('My Birthday is...'),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: DateButtonWidget(
                      title: "Date",
                      text: getText(),
                      onClicked: () => pickDate(context),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 15, left: 23),
                      child: Text('Your age will be public')),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 80,
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: color,
                            primary: color,
                            maximumSize: const Size.fromHeight(45),
                            fixedSize: const Size.fromWidth(350),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChooseGender()));
                          },
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;
    setState(() => date = newDate);
  }
}
