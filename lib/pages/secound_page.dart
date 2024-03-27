import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Center(
          child: Row(
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
