import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnreadPge extends StatefulWidget {
  const UnreadPge({super.key});

  @override
  State<UnreadPge> createState() => _UnreadPgeState();
}

class _UnreadPgeState extends State<UnreadPge> {
  late String currentTime;

  @override
  void initState() {
    super.initState();
    // DateTime dan vaqt olish
    DateTime vaqt = DateTime.now();
    currentTime = vaqt.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 35, 44),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  product(
                      "https://i.pinimg.com/236x/99/72/82/997282cb1ac48f7e4fb9eab06e8a5afc.jpg",
                      context,
                      "user_1"),
                  product(
                      "https://i.pinimg.com/236x/b3/f8/a9/b3f8a9ffb414e67cc998f6a5ae244dcd.jpg",
                      context,
                      "user_2"),
                  product(
                      "https://i.pinimg.com/236x/7d/c1/19/7dc11952f06054918386c8ee4031e92f.jpg",
                      context,
                      "user_3"),
                  product(
                      "https://i.pinimg.com/236x/f0/d3/04/f0d30498a273adc548175453287bc5ab.jpg",
                      context,
                      "user_4"),
                  product(
                      "https://i.pinimg.com/236x/5e/62/65/5e6265bd0bc781eacc7ed000b48a8715.jpg",
                      context,
                      "user_5"),
                  product(
                      "https://i.pinimg.com/236x/1d/8f/ef/1d8fef7faf8c0eaf89a4a6acee25a0ba.jpg",
                      context,
                      "user_6"),
                  product(
                      "https://i.pinimg.com/236x/59/83/f3/5983f3a695635b5fc76afe7a12b6fbad.jpg",
                      context,
                      "user_7"),
                  product(
                      "https://i.pinimg.com/236x/91/21/f2/9121f2b3c557192b6fcd234782a7c399.jpg",
                      context,
                      "user_8"),
                  product(
                      "https://i.pinimg.com/236x/b1/88/c6/b188c6801ad1d71d3c962c6e4aa2d0cf.jpg",
                      context,
                      "user_9"),
                  product(
                      "https://i.pinimg.com/236x/96/f2/24/96f224a35bde7bb16ddfdbeac3a07f92.jpg",
                      context,
                      "user_10"),
                  product(
                      "https://i.pinimg.com/236x/c5/35/cf/c535cfb5aa7fc656e82f9842f46639f6.jpg",
                      context,
                      "user_11"),
                ],
              )
            ],
          ),
        ));
  }
}

Widget product(String product, BuildContext context, String user) {
  return Row(
    children: [
      Container(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage(product), fit: BoxFit.cover)),
      ),
      const SizedBox(width: 10),
      Column(
        children: [
          Row(
            children: [
              Text(
                user,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.29),
              const Text(
                "7/12/23",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              const Text(
                "Asadbek ffffdfs",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.29),
              const Icon(
                Icons.push_pin_outlined,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    ],
  );
}
