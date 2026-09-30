import 'package:flutter/material.dart';

void main() {
  runApp(Ui());
}

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: .dark(),
        textTheme: TextTheme(displayMedium: TextStyle(fontStyle: .italic)),
      ),

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              leading: Icon(Icons.search),
              title: Text('My Notes'),
              actions: [Icon(Icons.more_vert)],
              backgroundColor: Colors.blueGrey,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 600,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: .circular(20),
                    color: const Color.fromARGB(255, 33, 89, 101),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(width: 2, height: 2),

                            Text(
                              "Small steps every day lead to big results.",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: .bold,
                              ),
                            ),
                            Text(
                              "Keep going!!",
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color.fromARGB(255, 124, 228, 132),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu6NvpMvJ-V0mheiekwjzbfpNPNC6705XYrn9jck8QKXGSLjQT',
                          width: 140,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: .centerLeft,
                child: Text(
                  "Add a New Note",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Title',
                  prefixIcon: Icon(Icons.note),
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 33, 89, 101),
                  border: OutlineInputBorder(
                    borderRadius: .circular(20),
                    borderSide: .none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Write your note here...',
                  prefixIcon: Icon(Icons.edit),
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 33, 89, 101),
                  border: OutlineInputBorder(
                    borderRadius: .circular(20),
                    borderSide: .none,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 900,
                height: 70,
                child: MaterialButton(
                  color: const Color.fromARGB(255, 33, 89, 101),
                  shape: RoundedRectangleBorder(borderRadius: .circular(20)),
                  onPressed: () {},
                  child: Text(
                    "+ Add Note",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: .centerLeft,
                child: Text(
                  "My Notes",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(borderRadius: .circular(20)),
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Learn Flutter"),
                  subtitle: Text('build widgets real apps\nApr 23, 2025'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(borderRadius: .circular(20)),
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Study Dart"),
                  subtitle: Text('build widgets real apps\nApr 22, 2025'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(borderRadius: .circular(20)),
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Build Projects"),
                  subtitle: Text('build widgets real apps\nApr 20, 2025'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
