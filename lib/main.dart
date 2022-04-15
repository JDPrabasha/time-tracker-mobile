import 'package:flutter/material.dart';

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
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Time Tracker App'),
          ),
          body: ListView(
            children: [
              GestureDetector(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Flutter Video 2",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "Flutter Project",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue[600]),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("8.00AM - 8.30AM"),
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
                  }),
              GestureDetector(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Spanish Lesson 3",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "Spanish Project",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[600]),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("10.00AM - 10.30AM"),
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
                  }),
              GestureDetector(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Ideation",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "Portfolio Project",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow[600]),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("3.00PM - 3.30PM"),
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
                  }),
              GestureDetector(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Flexbox Challenge 2",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                "CSS Project",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[600]),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text("12.00AM - 12.30AM"),
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
                  }),
            ],
            padding: const EdgeInsets.all(10),
          ),
        ));
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
