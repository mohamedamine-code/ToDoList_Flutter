// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noteappp/pagehome.dart';

class note extends StatelessWidget {
  const note({super.key, this.data01});
  final data01;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(132, 139, 106, 103),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(data01), Icon(Icons.delete)],
        ));
  }
}
