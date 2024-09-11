import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<List<dynamic>> toDoList = [
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
    ['Learn Flutter', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Center(
          child: Text('Simple Todo'),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    value: toDoList[index][1],
                    onChanged: (bool? newBool) {
                      setState(() {
                        toDoList[index][1] = newBool ?? false; // Update the item’s completion status
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      toDoList[index][0],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        decoration: (toDoList[index][1] ?? false) ? TextDecoration.lineThrough : TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
