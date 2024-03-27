import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPagePageState();
}

class _ThirdPagePageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
            flex: 1,
            child: ListView(
              children: [
                Column(
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
                  ],
                )
              ],
            )),
        Expanded(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ))
      ],
    ));
  }
}
