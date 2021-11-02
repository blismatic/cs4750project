import 'package:flutter/material.dart';
import 'wardrobe_screen.dart';
import 'add_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.filter_list_rounded),
        title: Text('Fitting Room'),
        actions: [Icon(Icons.save)],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 90,
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  flex: 10,
                  child: Icon(Icons.arrow_back)
                  ),
                Expanded(
                  flex: 80,
                  child: Column(
                    children: [
                    Text('image 1'),
                    Text('image 2'),
                    Text('image 3'),
                  ])
                ),
                Expanded(
                  flex: 10,
                  child: Icon(Icons.arrow_forward),
                )
              ]),
            ),
            Expanded(
              flex: 10,
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(child: Icon(Icons.meeting_room)),
                Expanded(child: Icon(Icons.person)),
                Expanded(child: Icon(Icons.add)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
