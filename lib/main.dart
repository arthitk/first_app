import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//สร้าง Widget ธีมของแอป
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("I am Joe"),
          ),
        ),
        body: const Center(
          /* child: Text(
            "Welcome to my app",
            style: TextStyle(fontSize: 30, color: Colors.orange),
          ), */
          child: Image(
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/005/298/799/original/cute-bear-sitting-animal-cartoon-character-design-illustration-free-vector.jpg")),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
