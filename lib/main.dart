import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckboxScreen(),
    );
  }
}

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

bool isChecked = false;
bool isAbsent = false;
bool isLate = false;
class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("Absent", style: TextStyle(
              color: Colors.black
            ),),
            selectedTileColor: Colors.grey.shade200,
            selected: isChecked,
            checkColor: Colors.black,
            fillColor: MaterialStatePropertyAll(
              Colors.white
            ),
            value: isChecked, 
            onChanged: (value){
              isChecked = value ?? false;
              setState(() {});
            }),
            CheckboxListTile(
            title: Text("Late", style: TextStyle(
              color: Colors.black
            ),),
            selectedTileColor: Colors.grey.shade200,
            selected: isAbsent,
            checkColor: Colors.black,
            fillColor: MaterialStatePropertyAll(
              Colors.white
            ),
            value: isAbsent, 
            onChanged: (value){
              isAbsent = value ?? false;
              setState(() {});
            }),
            CheckboxListTile(
            title: Text("Present", style: TextStyle(
              color: Colors.black
            ),),
            selectedTileColor: Colors.grey.shade200,
            selected: isLate,
            checkColor: Colors.black,
            fillColor: MaterialStatePropertyAll(
              Colors.white
            ),
            value: isLate, 
            onChanged: (value){
              isLate = value ?? false;
              setState(() {});
            }),
        ],
      ),
    );
  }
}
