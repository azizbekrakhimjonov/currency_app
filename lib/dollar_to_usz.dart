import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class DollarToUSZ extends StatefulWidget {
  const DollarToUSZ({super.key});

  @override
  State<DollarToUSZ> createState() => _DollarToUZState();
}

class _DollarToUZState extends State<DollarToUSZ> {
  TextEditingController dollarController = TextEditingController();
  double usz = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar to USZ Converter'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: dollarController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Dollar',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  usz = double.parse(dollarController.text) * 12405;
                });
              },
              child: Text("Convert"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "USZ : " + usz.toString(),
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
