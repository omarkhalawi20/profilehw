import 'package:flutter/material.dart';

import 'style.dart';

void main() {
  runApp(const MyApp());
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
          body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.grey,
        child: Column(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purpleAccent,
            ),
            child: Column(children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://giovannicosmetics.com/wp-content/uploads/2020/04/For-Men.jpg",
                  ),
                ),
                title: Text('Omar Khalawi',
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white)),
                subtitle: Text('Flutter Developer',
                    style: TextStyle(color: Colors.white)),
                selected: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text("858",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        "collecte",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text("51",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        "trend",
                        style: const TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text("275",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        "trace",
                        style: TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text("59",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Text(
                        "emergncy",
                        style: const TextStyle(color: Colors.white70),
                      )
                    ],
                  ),
                ],
              )
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.wallet),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    )),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.fire_truck),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    )),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.messenger,
                  color: Colors.blueAccent,
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    )),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.contact_support_outlined),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          style(
            label: 'Adress',
            sub: 'ensure your harvwsing adress',
            icon: Icons.local_printshop,
            color: Colors.purpleAccent,
          ),
          const SizedBox(
            height: 20,
          ),
          style(
            label: 'Privacy',
            sub: 'systm permision change',
            icon: Icons.lock,
            color: Colors.pinkAccent,
          ),
          const SizedBox(
            height: 20,
          ),
          style(
            label: 'General',
            sub: 'Basic functional setting',
            icon: Icons.book,
            color: Colors.amberAccent,
          ),
          const SizedBox(
            height: 20,
          ),
          style(
            label: 'notfication',
            sub: 'take over news in time',
            icon: Icons.notifications,
            color: Colors.lightBlue,
          ),
        ]),
      )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
