import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Container Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  //now i will make for  time picker
  TimeOfDay selectedTime = TimeOfDay.now();
  Future<void> _selectedTime(BuildContext context) async {
    final picked =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Selected Date : ${selectedDate.toLocal()}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  _selectedDate(context);
                },
                child: Text('Select Date')),
            SizedBox(
              height: 50,
            ),
            Text('Selected Time : ${selectedTime}'),
            ElevatedButton(
                onPressed: () {
                  _selectedTime(context);
                },
                child: Text('select Time'))
          ],
        ),
      ),
    );
  }
}
