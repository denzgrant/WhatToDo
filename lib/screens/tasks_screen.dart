import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Container(
        padding: EdgeInsets.only(
          top: 60.0,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.tealAccent,
              ),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'WhatToDo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
