import 'package:flutter/material.dart';

void main() {
  runApp(const AppAkademie());
}

class AppAkademie extends StatelessWidget {
  const AppAkademie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Akademie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App Akademie'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello World!',
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.rectangle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _sliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}