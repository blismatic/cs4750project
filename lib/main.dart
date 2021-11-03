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
  int randomSeed = 0;
  int selectedIndex = 1;

  void updateSeed(int offset) {
    setState(() {
      randomSeed += offset;
    });
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var randomResults = randomize(randomSeed, closet);
    print('${randomResults[0].brand} ${randomResults[0].type}');
    print('${randomResults[1].brand} ${randomResults[1].type}');
    print('${randomResults[2].brand} ${randomResults[2].type}');
    print('---------------++---------------');

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
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    //onPressed: updateSeedLeft,
                    onPressed: () => updateSeed(-1),
                  ),
                ),
                Expanded(
                    flex: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Column(children: [
                        Expanded(
                          flex: 33,
                          child: Center(
                            child: Image.network('${randomResults[0].url}'),
                          ),
                        ),
                        Expanded(
                          flex: 33,
                          child: Center(
                            child: Image.network('${randomResults[1].url}'),
                          ),
                        ),
                        Expanded(
                          flex: 33,
                          child: Center(
                            child: Image.network('${randomResults[2].url}'),
                          ),
                        ),
                      ]),
                    )),
                Expanded(
                  flex: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    //onPressed: updateSeedRight,
                    onPressed: () => updateSeed(1),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.healing_rounded), label: 'Left'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Middle'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Right'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
