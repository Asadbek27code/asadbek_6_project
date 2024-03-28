import 'package:flutter/cupertino.dart';
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
        backgroundColor: const Color.fromARGB(255, 32, 35, 44),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/236x/b1/88/c6/b188c6801ad1d71d3c962c6e4aa2d0cf.jpg"),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  "Asadbek",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Name :",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    const Text(
                      "Asadbek",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Lastname :",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Text(
                      "Ibragimov",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Nicname :",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Text(
                      "Asadbek27",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Parol :",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Text(
                      "**************",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Country :",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    const Text(
                      "Uzbekiston",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        ));
  }
}
