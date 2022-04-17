import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode()

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The list that contains information about photos
  List _loadedProjects = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const API_URL = 'http://localhost:3000/project';

    final response = await http.get(Uri.parse(API_URL));
    final data = json.decode(response.body);

    setState(() {
      _loadedProjects = data;
      print(_loadedProjects);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker App'),
      ),
      body: ListView(
        children: const [
          ItemCard(
            activity: "Flutter Video 2",
            time: "8:30AM - 9:30AM",
            project: "Flutter Project",
            color: Colors.blue,
          ),
          ItemCard(
            activity: "Spanish Lesson 3",
            time: "11:30AM - 12:30AM",
            project: "Spanish Project",
            color: Colors.red,
          ),
          ItemCard(
            activity: "Ideation",
            time: "8:30PM - 9:30PM",
            project: "Portfolio Project",
            color: Colors.yellow,
          ),
          ItemCard(
            activity: "Flexbox Challenge 2",
            time: "9:30PM - 11:30PM",
            project: "CSS Project",
            color: Colors.green,
          ),
        ],
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String activity;
  final String time;
  final String project;
  final Color color;
  const ItemCard({
    Key? key,
    required this.activity,
    required this.time,
    required this.project,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        activity,
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      project,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: color),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(time),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ));
        });
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ),
      ),
    );
  }
}
