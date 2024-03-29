import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/body.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: Colors.white,
              secondary: Colors.black,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
            ),
            useMaterial3: true),
        home: InstaCloneHome());
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0
          ? AppBar(
              title: Text(
                "Instagram",
                style: GoogleFonts.lobsterTwo(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {
                    print("tap");
                  },
                  icon: const Icon(
                    Icons.favorite_outline,
                    size: 43,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("tap");
                  },
                  icon: const Icon(
                    CupertinoIcons.paperplane,
                    size: 32,
                  ),
                ),
              ],
            )
          : null,
      body: InstaBody(
        index: index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              label: "Search"),
        ],
      ),
    );
  }
}
