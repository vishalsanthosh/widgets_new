import 'package:flutter/material.dart';

class TodoListExp extends StatefulWidget {
  const TodoListExp({super.key});

  @override
  State<TodoListExp> createState() => _TodoListExpState();
}

class _TodoListExpState extends State<TodoListExp> {
  List<String> todoItems=[
    "RUN",
    "EAT",
    "SLEEP"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("TO-DO"),),
      body: ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (context,index){
          return Dismissible(key: Key(todoItems[index]), 
          direction: DismissDirection.horizontal,
          onDismissed: (direction){
            setState(() {
              todoItems.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ITEM DELETED")));
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.delete,color: Colors.white,),
          ),
          child: ListTile(
            title: Text(todoItems[index]),
          ));
        }),
    );
  }
}