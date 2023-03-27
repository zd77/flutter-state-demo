import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_demo_app/tasks.provider.dart';

class TasksScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TasksScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tasksProvider = Provider.of<Tasks>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App')),
      body: Column(children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Task',
            hintText: 'Enter task name',
          ),
        ),
        ElevatedButton(
          child: const Text('Add task'),
          onPressed: () {
            tasksProvider.addTask(_controller.text);
            _controller.clear();
          },
        ),
        Expanded(
          child: Consumer<Tasks>(
            builder: (context, model, child) {
              return ListView.builder(
                  itemCount: model.tasks.length,
                  itemBuilder: (context, index) {
                    final task = model.tasks[index];
                    return ListTile(
                      title: Text(task.title),
                      trailing: Checkbox(
                        value: task.isDone,
                        onChanged: (_) {
                          model.toggleTask(index);
                        },
                      ),
                      onLongPress: () {
                        model.deleteTask(index);
                      },
                    );
                  });
            },
          ),
        )
      ]),
    );
  }
}
