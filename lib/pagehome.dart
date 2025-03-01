// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noteappp/note.dart';
import 'package:noteappp/button.dart';

class Pagehome extends StatefulWidget {
  const Pagehome({super.key});

  @override
  State<Pagehome> createState() => _PagehomeState();
}

class _PagehomeState extends State<Pagehome> {
  final TextEditingController _controller = TextEditingController();

  List<String> l1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent),
                child: Center(
                  child: Text("P O S T  A  N O T E !",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 16, 16, 16),
                      )),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: l1.length,
                itemBuilder: (context, index) {
                  return note(data01: l1[index]);
                },
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(16, 96, 94, 90),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: _controller,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Add Note !',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                MyButtton(
                  Function: () {
                    if (_controller.text.isNotEmpty) {
                      setState(() {
                        l1.add(_controller.text);
                      });
                      _controller.clear();
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
