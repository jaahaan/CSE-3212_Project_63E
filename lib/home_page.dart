import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_63e/converter_page.dart';

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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ConverterPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Converter Page"),
                ),
                SizedBox(width: 10),
                OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(side: BorderSide()),
                    child: Text("TextButton"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.amber,
                child: Center(child: Image.asset("assets/images/flutter.png")),
              ),
            ),

            Image.network(
              "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=869&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 200,
              width: 300,
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
