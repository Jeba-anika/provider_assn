import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/provider/todo_provider.dart';
import 'package:provider_class/views/details_screen.dart';

class HomeScreen extends StatelessWidget {
  // int balance = 1000;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);

    // return Scaffold(
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Text('Home screen'),
    //         Text(balance.toString()),
    //         TextButton(
    //             onPressed: () => Navigator.push(
    //                 context,
    //                 CupertinoPageRoute(
    //                     builder: (_) => DetailsScreen(
    //                           balance: balance,
    //                         ))),
    //             child: Text('go to the details screen'))
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("todos length: ${todos.todos.length}"),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => DetailsScreen())),
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: (context),
              builder: (_) => AlertDialog(
                    title: Text(
                      "Add new Todo",
                    ),
                    content: Column(
                      children: [
                        TextField(
                          controller: _titleController,
                          decoration: InputDecoration(hintText: "title"),
                        ),
                        TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(hintText: "description"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              final title = _titleController.text;
                              final description = _descriptionController.text;
                              todos.addNewTodo(title, description);
                              Navigator.pop(context);
                            },
                            child: Text("Add")),
                      ],
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: todos.todos.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(todos.todos[index].title),
              subtitle: Text(todos.todos[index].description),
              trailing: IconButton(
                onPressed: () {
                  todos.deleteTodo(index);
                },
                icon: Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}
