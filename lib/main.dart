// This is the very first flutter app and I am very enthusiastic to write the flutter app for faster UI development.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Business Card',
        theme: ThemeData(
          brightness: Brightness.dark,
//        primarySwatch: Colors.teal[800],
//        canvasColor: Colors.teal,

          // Define the font family
//        fontFamily: 'Georgia',

          //Define the default TextTheme,
//        textTheme: TextTheme(
//          headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//          headline6: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),
//          bodyText2: TextStyle(fontSize: 10.0, fontFamily: 'Hind'),
//        ),

          // Target Device and Visual Density
          platform: TargetPlatform.iOS,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[800],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/nishant.jpg'),
            ),
          ),
          Text(
            'Nishant Sharma',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontSize: 20.0,
            ),
          ),
          Text(
            'PROJECT MANAGER',
            style: TextStyle(
              color: Colors.teal.shade100,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          SizedBox(
            width: 200.0,
            height: 30.0,
            child: Divider(
              color: Colors.teal.shade100,

            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone_android, color: Colors.teal,
              ),
              title: Text(
                '+91 89797 68681', style: TextStyle(
                color:Colors.teal.shade900,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'nishantsharma@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
//                    fontFamily: 'Pacifico',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      )),
    );
  }
}
