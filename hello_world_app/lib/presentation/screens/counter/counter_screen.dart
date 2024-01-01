import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_clickCounter',
            style: const TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100,
            ),
          ),
          Text(
            'Click${_clickCounter == 1 ? '' : 's'}',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        // ignore: avoid_returning_null_for_void
        onPressed: () => {setState(() => _clickCounter += 1)},
        child: const Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}
