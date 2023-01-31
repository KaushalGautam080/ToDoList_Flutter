import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  Widget myCard(String task) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        padding: EdgeInsets.all(5),
        child: ListTile(
          title: Text("$task"),
          onLongPress: () {},
        ),
      ),
    );
  }

  void showAlert() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text("Add Tasks"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter your task"),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(),
                        child: Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlert();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Tasks"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            myCard("Task 1"),
            myCard("Task2"),
            myCard("add \n delete \n Ready")
          ],
        ),
      ),
    );
  }
}
