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
      home: const UnitForm(),
    );
  }
}

class UnitForm extends StatefulWidget {
  const UnitForm({super.key});

  @override
  State<UnitForm> createState() => _UnitFormState();
}

class _UnitFormState extends State<UnitForm> {
  //Form icin kontroller
  final TextEditingController widthController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  //Secilen Paketleme turu
  String selectedPackaging = 'Box';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {
                      setState(() {
                        selectedPackaging = "Box";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedPackaging == "Box"
                      ? Colors.blue
                      :Colors.grey,
                    ),
                    child: const Text('Box'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedPackaging = "Bag";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedPackaging == "Bag"
                      ? Colors.blue
                      : Colors.grey,
                    ),
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
                      controller: widthController,
                      decoration: const InputDecoration(
                        labelText: 'Width',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: TextField(
                      controller: lengthController,
                      decoration: const InputDecoration(
                        labelText: 'Length',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: TextField(
                      controller: heightController,
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
                controller: weightController,
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
                    onPressed: () {
                      //Geri adim islemleri
                    }, 
                    child: const Text('Previous Step'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //Kullanicidan alinan degerler
                      String width = widthController.text;
                      String length = lengthController.text;
                      String height = heightController.text;
                      String weight = weightController.text;

                      //Konsola Yazdirma
                      print("Selected Packaging: $selectedPackaging");
                      print("Width: $width");
                      print("Length: $length");
                      print("Height: $height");
                      print("Weight: $weight");
                    }, 
                    child: const Text('Next Step'),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}