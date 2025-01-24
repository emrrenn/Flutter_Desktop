import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Information',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unit Information"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Begin by entering the width, length, height and weight of each unit below',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20),
              const Text(
                'Unit Packaging',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Box'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Bag')
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Unit Dimensions',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Width',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Height',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Unit Weight',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Weight',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Previous Step'),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Next Step'),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}