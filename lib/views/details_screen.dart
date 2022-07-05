import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/todo_provider.dart';

class DetailsScreen extends StatelessWidget {
  // int balance;
  // DetailsScreen({required this.balance});

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);

    return Scaffold(
      body: Center(
        // child: Text(balance.toString()),
        child: Text("todos length: ${todos.todos.length}"),
      ),
    );
  }
}
