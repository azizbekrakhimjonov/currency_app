import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class uzsToDollar extends StatefulWidget {
  const uzsToDollar({super.key});

  @override
  State<uzsToDollar> createState() => _uzsToDollarState();
}

class _uzsToDollarState extends State<uzsToDollar> {
  TextEditingController uzsController = TextEditingController();
  double dollar = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USZ to Dollar Converter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: uzsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter USZ',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dollar = double.parse(uzsController.text) / 12345;
                });
              },
              child: Text("Convert"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Dollar : " + dollar.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
