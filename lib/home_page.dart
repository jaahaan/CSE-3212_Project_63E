import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        // leading: Icon(Icons.home, color: Colors.amber),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        // ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Hello 63E",
              style: TextStyle(color: Colors.cyan, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Welcome to our class",
              style: TextStyle(color: Colors.cyan, fontSize: 20),
            ),
          ),

          Container(
            width: 300,
            height: 400,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Text("I am container!!!"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      endDrawer: NavigationDrawer(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HomePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
