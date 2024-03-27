import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/first_page.dart';
import 'pages/secound_page.dart';
import 'pages/third_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final PageController controller = PageController();

  final List<Widget> _pages = const <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  void nextPage(int index) {
    currentIndex = index;
    controller.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 42, 51),
        toolbarHeight: 70,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
            iconSize: 30,
            color: const Color.fromARGB(255, 180, 180, 180),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30,
            color: const Color.fromARGB(255, 180, 180, 180),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            iconSize: 30,
            color: const Color.fromARGB(255, 180, 180, 180),
          ),
        ], // centerTitle: true,
      ),
      body: PageView(
        controller: controller,
        onPageChanged: nextPage,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 30, 42, 51),
        // fixedColor: Colors.transparent,
        elevation: 0,
        currentIndex: currentIndex,
        // selectedItemColor: Colors.red,
        unselectedItemColor: Colors.yellow,
        selectedFontSize: 20,
        // unselectedIconTheme: const IconThemeData(size: 15),

        onTap: nextPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
              activeIcon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Chat",
              activeIcon: Icon(Icons.done_all)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
              activeIcon: Icon(Icons.done_all)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
              activeIcon: Icon(Icons.done_all)),
        ],
      ),
    );
  }
}
