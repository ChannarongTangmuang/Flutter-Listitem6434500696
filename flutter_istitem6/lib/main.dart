import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> students = [
      {"name": "กมล จันบุตรดี", "id": "643450063-8"},
      {"name": "นภัสสร ดวงจันทร์", "id": "643450326-2"},
      {"name": "เจษฏา พบสมัย", "id": "643450323-8"},
      {"name": "สุธาดา เสนามงคล", "id": "643450089-0"},
      {"name": "ศรันย์ ซุ่นเส้ง", "id": "643450086-6"},
      {"name": "ชาญณรงค์ แต่งเมือง", "id": "643450069-6"},
      {"name": "ก้องภพ ตาดี", "id": "643450321-2"},
      {"name": "ประสิทธิชัย จันทร์สม", "id": "643450079-3"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App 643450069-6"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: students[index]['name']!,
            studentId: students[index]['id']!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String studentId}) {
    final Map<String, String> nameToImage = {
      "กมล จันบุตรดี": 'images/1.jpg',
      "นภัสสร ดวงจันทร์": 'images/2.jpg',
      "เจษฏา พบสมัย": 'images/3.jpg',
      "สุธาดา เสนามงคล": 'images/4.jpg',
      "ศรันย์ ซุ่นเส้ง": 'images/5.jpg',
      "ชาญณรงค์ แต่งเมือง": 'images/6.jpg',
      "ก้องภพ ตาดี": 'images/7.jpg',
      "ประสิทธิชัย จันทร์สม": 'images/8.jpg',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(nameToImage[name] ?? 'images/default.jpg'),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'ID: $studentId',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
