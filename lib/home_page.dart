import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

          SizedBox(
            height: 200,
            width: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Colors.amber,
              child: Center(child: Text("Flutter")),
            ),
          ),
          Container(
            width: 300,
            height: 400,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(color: Colors.red, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // shape: BoxShape.circle,
            ),
            child: Text(
              "I am container!!!",
              style: GoogleFonts.lobster(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(
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
