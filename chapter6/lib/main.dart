// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Container Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   DateTime selectedDate = DateTime.now();
//   Future<void> _selectedDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context, firstDate: DateTime(2000), lastDate: DateTime(2100));
//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   //now i will make for  time picker
//   TimeOfDay selectedTime = TimeOfDay.now();
//   Future<void> _selectedTime(BuildContext context) async {
//     final picked =
//         await showTimePicker(context: context, initialTime: selectedTime);
//     if (picked != null && picked != selectedTime) {
//       setState(() {
//         selectedTime = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(' Example'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text("Selected Date : ${selectedDate.toLocal()}"),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   _selectedDate(context);
//                 },
//                 child: Text('Select Date')),
//             SizedBox(
//               height: 50,
//             ),
//             Text('Selected Time : ${selectedTime}'),
//             ElevatedButton(
//                 onPressed: () {
//                   _selectedTime(context);
//                 },
//                 child: Text('select Time'))
//           ],
//         ),
//       ),
//     );
//   }
// }

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
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final FormKey = GlobalKey<FormState>();
  final TextEditingController confirmPasswordcontroller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Example'),
      ),
      body: Form(
          key: FormKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter you first name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your password ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: confirmPasswordcontroller,
                decoration: InputDecoration(
                    labelText: 'confirm password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2, color: Colors.blue))),
                validator: (value) {
                  if (value != passwordcontroller.text) {
                    return 'password do not match ';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('the data is in processing')));
                    }
                  },
                  child: Text('submit'))
            ],
          )),
    );
  }
}
