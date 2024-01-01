import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int _clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Functions',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              _clickCounter = 0;
              setState(() {});
            },
          ),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFBA(
            icon: Icons.refresh_outlined,
            onPressed: () {
              _clickCounter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFBA(
            icon: Icons.plus_one,
            onPressed: () {
              _clickCounter += 1;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFBA(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              _clickCounter -= 1;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class CustomFBA extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomFBA({required this.icon, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(
        icon,
      ),
    );
  }
}
