import 'package:flutter/material.dart';
import 'package:tanzak_clone/chart_screen/chart_screen.dart';
import 'package:tanzak_clone/home_screen/home_screen.dart';
import 'package:tanzak_clone/search_screen/search_screen.dart';
import 'package:tanzak_clone/settings_screen/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.white,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white)),
          )),
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPosition = 0;
  final screens = [
    HomeScreen(),
    ChartScreen(),
    SearchScreen(),
    SettingsScreen()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[currentPosition],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPosition,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => currentPosition = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Chart'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
