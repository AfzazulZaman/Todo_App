import 'package:flutter/material.dart';
import 'package:flutter_app_1/todo_list.dart';

void main()
{
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List toDoList = [
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
              child: Text(
                toDoList[index][0],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        }
      ),

    );
  }
}
       