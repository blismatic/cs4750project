import 'package:flutter/material.dart';
//import 'wardrobe_screen.dart';
//import 'add_screen.dart';
import 'closet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.white,
        ),
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
    var randomizeSeed = 25;
    var randomResults = randomize(randomizeSeed, closet);

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 33,
                          child:
                            Center(
                              child: 
                              //Text('${randomResults[0].brand}'),
                              Image.network('${randomResults[0].url}'),
                              ),
                            ),
                        Expanded(
                          flex: 33,
                          child:
                            Center(
                              child: 
                              //Text('${randomResults[1].brand}'),
                              Image.network('${randomResults[1].url}'),
                              ),
                            ),
                        Expanded(
                          flex: 33,
                          child:
                            Center(
                              child: 
                              //Text('${randomResults[2].brand}'),
                              Image.network('${randomResults[2].url}'),
                              ),
                              ),
                    ]),
                  )
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
