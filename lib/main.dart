import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


    void showToast(){
      Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        gravity: ToastGravity.BOTTOM_LEFT,
        backgroundColor: Colors.red,
        textColor: Colors.yellow,
        fontSize: 16.0
    );
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice 5',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Practice 5"),
            bottom: createTabbar(),
          ),
          body: TabBarView(
            children: [
              // Tab 1: ListView
              ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  ListTile(leading: Icon(Icons.map), title: Text("MAP")),
                  ListTile(leading: Icon(Icons.alarm), title: Text("ALARM")),
                  ListTile(leading: Icon(Icons.task), title: Text("TASK")),
                ],
              ),

              // Tab 2: GridView.extent
              Center(
                child: GridView.extent(
                  padding: const EdgeInsets.all(16),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: 100.0,
                  primary: false,
                  children: [
                    Container(color: Colors.red),
                    Container(color: Colors.yellow),
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.orange),
                    Container(color: Colors.teal),
                  ],
                ),
              ),

              // Card Widget
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Colors.deepOrange,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    elevation: 10,
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.album, size: 50),
                          title: Text("Ghetto Dogs"),
                          subtitle: Text("Best Group"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("BUTTON 1 "),
                            ),
                            const SizedBox(width: 5),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("BUTTON 2"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(onPressed: showToast, child: Text("Button")),
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
               DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(accountName: accountName, accountEmail: accountEmail),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // TabBar with 3 tabs and icons
  TabBar createTabbar() {
    return TabBar(
      tabs: [
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bike_outlined),
              SizedBox(width: 5),
              Text("ListView"),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_car),
              SizedBox(width: 5),
              Text("GridView"),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_travel),
              SizedBox(width: 5),
              Text("Card Widget"),
            ],
          ),
        ),
        //Buttons
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.radio_button_checked_outlined),
              SizedBox(width: 5),
              Text("Buttons"),
            ],
          ),
        ),
      ],
    );
  }
}
