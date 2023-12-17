import 'package:flutter/material.dart';
import 'usz_to_dollar.dart';
import 'dollar_to_usz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Convertor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: CurrencyConverter(),
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  CurrencyConverter({super.key});
  final ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.teal,
    textStyle: const TextStyle(fontSize: 30),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // button's shape
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Currency Converter'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: style,
                onPressed: () {
                  print('button 1 onClick');
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DollarToUSZ()));
                },
                child: Text('Dollar To USZ'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: style,
                onPressed: () {
                  print('button 2 onClick');

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => uzsToDollar()));
                },
                child: Text(
                  'USZ to Dollar',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
