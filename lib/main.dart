import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//สร้าง Widget ธีมของแอป ใช้ stateless ซึ่งเปลี่ยนค่าไม่ได้
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("I am Joe"),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          //จัดรูปแบบการแสดงผลในคอลัมน์
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to my App",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            const Text(
              "Press button to increase number",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            Text(
              "$number",
              style: const TextStyle(fontSize: 60),
            ),
          ],
          /* Image(
                image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/005/298/799/original/cute-bear-sitting-animal-cartoon-character-design-illustration-free-vector.jpg"))
          ], */
        ),
        /* child: Text(
            "Welcome to my app",
            style: TextStyle(fontSize: 30, color: Colors.orange),
          ), */
        /* child: Image(
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/005/298/799/original/cute-bear-sitting-animal-cartoon-character-design-illustration-free-vector.jpg")
                  ), */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
