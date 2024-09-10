import 'package:bazzar/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Textfield extends StatelessWidget {
  String title;
  TextInputType type;
  Function(String) onchanged;

  Textfield({required this.title, required this.type, required this.onchanged});
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        onChanged: onchanged,
        keyboardType: type,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 242, 235, 235),
          label: Text(
            title,
            style: TextStyle(color: Colors.grey[500]),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
