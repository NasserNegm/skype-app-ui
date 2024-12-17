import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ex(),
    );
  }
}

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("This the page is temporarily"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "please wait untill App will be fenished \n Eng / NASSER ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.purple),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, "/");
          },
          backgroundColor: Colors.purple,
          child: const Text("back")),
    );
  }
}
