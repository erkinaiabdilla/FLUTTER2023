import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak33_firebase_1/model.dart';
import 'package:sabak33_firebase_1/views/todo_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('todos').snapshots();
  }

  Future<void> updateTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db
        .collection('todos')
        .doc(todo.id)
        .update({'isComplated': !todo.isComplated});
  }

  Future<void> deleteTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db.collection('todos').doc(todo.id).delete();
  }

  @override
  void initState() {
    readTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeView'),
      ),
      body: StreamBuilder(
        stream: readTodo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CupertinoActivityIndicator(
              radius: 25,
            ));
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else if (snapshot.hasData) {
            final List<Todo> todos = snapshot.data!.docs
                .map((e) =>
                    Todo.fromMap(e.data() as Map<String, dynamic>)..id = e.id)
                .toList();
            return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final todo = todos[index];
                  return Card(
                    child: ListTile(
                      leading: Text(todo.title),
                      title: Text(todo.description),
                      subtitle: Text(todo.author),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: todo.isComplated,
                            onChanged: (v) async {
                              await updateTodo(todo);
                            },
                          ),
                          IconButton(
                            onPressed: () async {
                              await deleteTodo(todo);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Text('Белгисиз ката бар');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TodoView()),
          );
        },
      ),
    );
  }
}
