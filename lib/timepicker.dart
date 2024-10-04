import 'package:flutter/material.dart';

class TimePickerExp extends StatefulWidget {
  const TimePickerExp({super.key});

  @override
  State<TimePickerExp> createState() => _TimePickerExpState();
}

class _TimePickerExpState extends State<TimePickerExp> {
  late TimeOfDay selectedTime =TimeOfDay.now();

  Future<void> _selectTime(BuildContext context)async{
    final TimeOfDay? picked=await showTimePicker(
      context: context, 
      initialTime: selectedTime);
  if(picked != null && picked !=selectedTime){
    setState(() {
      selectedTime = picked;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIME PICKED"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected time: ${selectedTime.format(context)}"),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: ()=> _selectTime(context),
              
               child: Text("Select Time")),
            )
          ],
        ),
      ),
    );
  }
}