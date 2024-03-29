import 'package:asadbek_6_project/pages/calls.dart';
import 'package:asadbek_6_project/pages/first_paskage/all.dart';
import 'package:asadbek_6_project/pages/first_paskage/contacts.dart';
import 'package:asadbek_6_project/pages/first_paskage/groups.dart';
import 'package:asadbek_6_project/pages/first_paskage/unread.dart';
import 'package:flutter/material.dart';
import 'pages/first_page.dart';
import 'pages/secound_page.dart';
import 'pages/third_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
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
    CallsPage(),
  ];

  void nextPage(int index) {
    currentIndex = index;
    controller.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
    setState(() {});
  }

  int currentIndex2 = 0;
  final PageController controller2 = PageController();

  final List<Widget> _pages2 = const <Widget>[
    Allpage(),
    UnreadPge(),
    ContactsPages(),
    GroupsPge(),
  ];

  void nextPage2(int index) {
    currentIndex2 = index;
    controller2.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 35, 44),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 42, 51),
        toolbarHeight: 80,
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
          const SizedBox(
            width: 20,
          )
        ], // centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 1,
                    height: 40,
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "All",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 1,
                    height: 40,
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Unread",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 8,
                    height: 40,
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Contacts",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 8,
                    height: 40,
                    color: const Color.fromARGB(255, 30, 42, 51),
                    splashColor: const Color.fromARGB(255, 129, 150, 127),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Text(
                      "Groups",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 9,
            child: PageView(
              controller: controller,
              onPageChanged: nextPage,
              children: _pages,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 30, 42, 51),
        // fixedColor: Colors.transparent,
        elevation: 0,
        iconSize: 30,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 180, 180, 180),
        // selectedFontSize: 20,
        // unselectedIconTheme: const IconThemeData(size: 15),
        onTap: nextPage,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
              activeIcon: Icon(Icons.chat)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              activeIcon: Icon(Icons.person)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: "Add",
              activeIcon: Icon(Icons.person_add)),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls",
              activeIcon: Icon(Icons.call)),
        ],
      ),
    );
  }
}
