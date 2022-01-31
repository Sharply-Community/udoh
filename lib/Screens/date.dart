import 'package:flutter/material.dart';
import 'package:marriage/exports.dart';
class DatePage extends StatefulWidget {
  const DatePage({ Key? key }) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  DateTime? date;

String getText(){
  if (date == null){
    return 'Select Date';
  }else {
    return '${date!.month}/${date!.day}/${date!.year}';
  }
}

  @override
  Widget build(BuildContext context) => DateButtonWidget(
    title: ,
    text: ,
    onClicked: ,
  );



Future pickDate(BuildContext context) async{
  final initialDate = DateTime.now();
  final newDate = await showDatePicker(
    context: context, 
    initialDate: date ?? initialDate, 
    firstDate: DateTime(DateTime.now().year - 5), 
    lastDate: DateTime(DateTime.now().year + 5),);

    if (newDate == null) return;
    setState(() => date = newDate);
}
}