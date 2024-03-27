import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
