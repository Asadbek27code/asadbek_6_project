import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPagePageState();
}

class _ThirdPagePageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 35, 44),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70, left: 5),
                height: 300,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 30, 42, 51),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 10,
                        ),
                        Text(
                          "Firstname : ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Asadbek",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        Text(
                          "Lastname : ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Ibragimov",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 20,
                        ),
                        Text(
                          "Phone : ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "+998906709767",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 70,
                    height: 100,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Cencil",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
