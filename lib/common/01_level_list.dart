import 'package:flutter/material.dart';

class LevelListGet extends StatefulWidget {
  const LevelListGet({Key? key}) : super(key: key);

  @override
  State<LevelListGet> createState() => _LevelListGetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LevelListGetState extends State<LevelListGet> {
  String dropdownValue = '選択してください';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down_circle_outlined,
        color: Colors.white,
      ),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['選択してください', 'lev.1', 'lev.2', 'lev.3', 'lev.4', 'lev.5']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
