import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController todoController = TextEditingController();
  List todoList = [];
  bool isadd = true;
  int selectedindex = 0;
  addtodo() {
    todoList.add(todoController.text);
    todoController.clear();
  }

  edittodosave() {
    todoList[selectedindex] = todoController.text;
    todoController.clear();
    isadd = true;
    setState(() {});
  }

  showvalue(index) {
    todoController.text = todoList[index];
    isadd = false;
    selectedindex = index;
  }

  tododelete(index) {
    todoList.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextField(
          controller: todoController,
          obscureText: false,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Type todo....'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                isadd ? addtodo() : edittodosave();
                setState(() {});
              },
              icon: Icon(Icons.check)),
        ],
      ),
    
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text('${todoList[index]}'),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  IconButton(
                    onPressed: () {
                      tododelete(index);
                      setState(() {});
                    },
                    icon: Icon(Icons.delete),
                  ),
                  IconButton(
                      onPressed: () {
                        showvalue(index);
                      },
                      icon: Icon(Icons.edit))
                ])
                //Row(
                //   children: [

                //     SizedBox(
                //       width: 100,
                //       height: 100,
                //       child: IconButton(
                //           onPressed: () {
                //             todoList.remove(todoList[index]);
                //             setState(() {

                //             });
                //           },
                //           icon: Icon(Icons.delete)),
                //     )
                //   ],
                // ),
                );
          }),
    );
  }
}
