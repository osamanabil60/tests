import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              // SafeArea keeps everything below status bar
              SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red.shade700, Colors.blue.shade800],
                    ),
                  ),
                  child: TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 4,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white60,
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'Home'),
                      Tab(icon: Icon(Icons.face), text: 'Profile'),
                      Tab(icon: Icon(Icons.contacts), text: 'Contacts'),
                      Tab(icon: Icon(Icons.more), text: 'More'),
                    ],
                  ),
                ),
              ),

              // TabBarView content
              Expanded(
                child: TabBarView(
                  children: [
                    Container(child: Column(children: [
                      Container(height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(image: AssetImage('C:\Users\osama\Downloads\osama.jpg'),
                                fit: BoxFit.cover)
                        )
                        ,),
                      Text('Passionate and detail-oriented Android Developer specializing in Flutter development, with hands-onexperience building cross-platform mobile applications. Proficient in Dart programming, UI/UX design, andstate management solutions like Provider and Bloc. Strong understanding of RESTful APIs, Firebaseintegration, and version control (Git). Collaborated on team projects, demonstrating excellent teamwork andcommunication skills. Eager to contribute innovative solutions and grow as a developer in a dynamic techenvironment.'),
                    ]),),
                    Center(child: Text("Profile Content")),
                    Center(child: Text("Contacts Content")),
                    Center(child: Text("More Content")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
