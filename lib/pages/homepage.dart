import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application_1/model/collections_controller.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var _loadedData = {};
    var answers = {};

    Future<void> readJson() async {
      final String response = await rootBundle.loadString('assets/files/sample.json');
      final data = await json.decode(response);
      setState(() {
        _loadedData = data["q1"];
      });
    }

    @override
    void initState() {
      readJson();
      super.initState();
    }

    return Scaffold(
          backgroundColor: const Color(0xFF408B51),
            appBar: AppBar(
            title: const Text(
              'FilBis: Your Ultimate Health Chatbot!',
              style: TextStyle(
              color: Colors.black, 
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: const [
              IconButton(
              onPressed: FilbisDatabase.initDb,
              icon: Icon(Icons.add),
              ),
            ],
            ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    _loadedData["question"] ?? "Loading data...",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (_loadedData["choices"] != null)  // Check for null
                    ...(_loadedData["choices"] as List).map<Widget>((choice) {
                    return ElevatedButton(
                      onPressed: () {},
                      child: Text(choice),
                    );
                    }).toList()
                  else
                  const CircularProgressIndicator(),  // Show a loading indicator
                ],
              ),
            ),
          ),
        );
  }
}