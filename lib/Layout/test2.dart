import 'package:flutter/material.dart';

class Logins extends StatefulWidget {
  @override
  MyLogin createState() => MyLogin();
}

class MyLogin extends State<Logins> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
          length: 4,
          child:Scaffold(
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red.shade700, Colors.blue.shade800],
                ),
              ),
              child: Column(
                children: [
                   TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 5,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white60,
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'Home'),
                      Tab(icon: Icon(Icons.face), text: 'Profile'),
                      Tab(icon: Icon(Icons.contacts), text: 'Contacts'),
                      Tab(icon: Icon(Icons.more), text: 'More'),
                    ],
                  ),
                  Text('P000000000000000000000000000000000000000000000000000000assionate and detail-oriented Android Developer specializing in Flutter development, with hands-onexperience building cross-platform mobile applications. Proficient in Dart programming, UI/UX design, andstate management solutions like Provider and Bloc. Strong understanding of RESTful APIs, Firebaseintegration, and version control (Git). Collaborated on team projects, demonstrating excellent teamwork andcommunication skills. Eager to contribute innovative solutions and grow as a developer in a dynamic techenvironment. '),
                ],
              ),
            ),
          )
      ),
    );
  }
}