import 'package:flutter/material.dart';

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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Scaffold'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;

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

  void Seacrh()
  {
    print("Seacrhing");
  }

  void Profile()
  {
    print("Check Profile");
  }

  void ItemTapped(int index)
  {
    setState(() {
      _selectedIndex=index;
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
  // Material APP atau navbar atas  
  //  return MaterialApp(
  //    home: DefaultTabController(
  //      length: 3,
  //      child: Scaffold(
  //       appBar: AppBar(
  //         bottom: TabBar(
  //           tabs: [
  //            Tab(icon: Icon(Icons.phone),),
  //             Tab(icon: Icon(Icons.missed_video_call),),
  //              Tab(icon: Icon(Icons.call_missed),),
  //         ],),
  //         title: Text("Contacts",),
  //       ),
  //       body: TabBarView(
  //         children: [
  //           Tab(icon: Icon(Icons.phone),),
  //             Tab(icon: Icon(Icons.missed_video_call),),
  //              Tab(icon: Icon(Icons.call_missed),),
  //         ],
  //         ),
  //      ) ,
  //      ),
  //  );
   //Navbar Bottom
   // Slivers roll
   return CustomScrollView(
     slivers:<Widget>[
       SliverAppBar(
         pinned: true,
         expandedHeight: 80,
         flexibleSpace: FlexibleSpaceBar(
           title: Text("Slivers"),
           ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index)
              {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyanAccent,
                  child: Text("List Item $index"),                                  
                );
              },
               childCount : 20,
              ), 
            itemExtent: 80,
          ),
         
     ]
   );

    // return Scaffold(
    //  appBar: AppBar(
    //   title: Text(widget.title),
    //   actions: <Widget>[
    //     IconButton(
    //       icon: Icon(Icons.search),
    //       tooltip:"Pencarian" ,
    //       onPressed: Seacrh,
    //      ),
    //      IconButton(
    //       icon: Icon(Icons.person),
    //       tooltip:"Profile" ,
    //       onPressed: Profile,
    //      )
    //   ]    
    //  ),

    //   drawer: Drawer(
    //     child: Column(
    //       children: <Widget>[
    //         ListTile(
    //           leading: Icon(Icons.add_box),
    //           title: Text("Tambah Box"),
    //           onTap: (){
    //             print("Rubah Ke tambah BOx");
    //             Navigator.pop(context);
    //           },
    //         ),
    //       ],
    //       )
    //   ),
    //   body: Center(
    //     // Center is a layout widget. It takes a single child and positions it
    //     // in the middle of the parent.
    //     child: Column(
    //       // Column is also a layout widget. It takes a list of children and
    //       // arranges them vertically. By default, it sizes itself to fit its
    //       // children horizontally, and tries to be as tall as its parent.
    //       //
    //       // Invoke "debug painting" (press "p" in the console, choose the
    //       // "Toggle Debug Paint" action from the Flutter Inspector in Android
    //       // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
    //       // to see the wireframe for each widget.
    //       //
    //       // Column has various properties to control how it sizes itself and
    //       // how it positions its children. Here we use mainAxisAlignment to
    //       // center the children vertically; the main axis here is the vertical
    //       // axis because Columns are vertical (the cross axis would be
    //       // horizontal).
    //     ),
    //   ),

    //   bottomNavigationBar: BottomNavigationBar(
    //    items: <BottomNavigationBarItem>[
    //      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    //       BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("Maps")),
    //        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
    //    ],
    //    currentIndex: _selectedIndex,
    //    onTap: ItemTapped,
    //    fixedColor: Colors.blueAccent,
    //   ),

    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: Icon(Icons.album),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}