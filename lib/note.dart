// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noteappp/pagehome.dart';

class note extends StatefulWidget {
  const note({super.key, this.data01});
  final data01;

  @override
  State<note> createState() => _noteState();
}

class _noteState extends State<note> {
  bool isChked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(132, 139, 106, 103),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    isChked = !isChked;
                  });
                },
                child: isChked
                    ? Icon(
                        Icons.check_box,
                        size: 20,
                      )
                    : Icon(
                        Icons.check_box_outline_blank_sharp,
                        size: 20,
                      )),
            SizedBox(width: 10,),
            Text(widget.data01,
                style: TextStyle(
                  fontSize: 18,
                  color: isChked ? const Color.fromARGB(118, 0, 0, 0):Colors.black,
                  decoration: isChked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                )),
          ],
        ));
  }
}
