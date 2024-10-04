import 'package:flutter/material.dart';

class DatePickerExp extends StatefulWidget {
  const DatePickerExp({super.key});

  @override
  State<DatePickerExp> createState() => _DatePickerExpState();
}

class _DatePickerExpState extends State<DatePickerExp> {
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context)async{
    final DateTime? picked =await showDatePicker(
      context: context,
       firstDate: DateTime(2000),
        lastDate: DateTime(2101));
        if(picked !=null && picked !=selectedDate){
          setState(() {
            selectedDate=picked;
          });
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DATE PICKED"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              selectedDate != null
              ? "selected Date:${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
              : "No Date selected",style: TextStyle(fontSize: 18),
            ),
            Center(child: ElevatedButton(onPressed: ()=> _selectDate(context), child: Text("Select Date")))
          ],
        ),
      ),
    );
  }
}