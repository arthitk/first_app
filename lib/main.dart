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
          children: const [
            Text(
              "Hello",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            Text(
              "Welcome to my app",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            Text(
              "Create by Joe",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            Image(
                image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/005/298/799/original/cute-bear-sitting-animal-cartoon-character-design-illustration-free-vector.jpg"))
          ],
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
    );
  }
}
