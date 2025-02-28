// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MyButtton extends StatelessWidget {
  const MyButtton({super.key, this.Function});

  final Function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: Function,
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green[900],
                borderRadius: BorderRadius.circular(50),
              ),
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ))),
        ),
      ),
    );
  }
}
