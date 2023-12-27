import 'package:flutter/material.dart';
import 'package:todoapp/app/components/dialog_box.dart';
import 'package:todoapp/app/components/todo_tile.dart';

import 'package:todoapp/app/constans/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  List todoList = [
    ["Make exercise", false],
    ["Do Exercise", true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void saveNewTask() {
    setState(
      () {
        todoList.add(
          [controller.text, false],
        );
        controller.clear();
      },
    );
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarrandContainerColor,
        title: const Text(
          'To Do',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: todoList[index][0],
            isTaskCompleted: todoList[index][1],
            onchanged: (value) {
              checkBoxChanged(value, index);
            },
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
