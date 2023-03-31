import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App')),
      body: Column(children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
              labelText: 'Task', hintText: 'Enter task name'),
        ),
        ElevatedButton(
          child: const Text('Add task'),
          onPressed: () {
            _controller.clear();
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 0,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Some title'),
                trailing: Checkbox(
                  value: true,
                  onChanged: (_) {},
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
