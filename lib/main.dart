// This is the very first flutter app and I am very enthusiastic to write the flutter app for faster UI development.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
//          actions: [Icons.drag_handle],
          backgroundColor: Colors.blueGrey[400],
          title: Center(child: Text('I am rich')),
//          bottom:
        ),
        body: ListView(
          children: [
            Center(
              child: Container(
                child: Image(
                  image: NetworkImage('https://picsum.photos/id/1/200/300'),
                ),
              ),
            )
          ],
        ),
      ),
    ));
