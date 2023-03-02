import 'package:flutter/material.dart';
import 'package:iwastesting/home/main_menu.dart';
import 'package:iwastesting/market/main_market.dart';
import 'package:iwastesting/provider/cookie_provider.dart';
import 'package:iwastesting/stats/main_stats.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => CookieProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
      ),
      body: Center(
          child: selectedIndex == 0
              ? MenuMain()
              : selectedIndex == 1
                  ? MarketMain()
                  : selectedIndex == 2
                      ? StatsMain()
                      : Text("we had only 3 bottomnavbaritem lol")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business_outlined), label: "Market"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart_sharp), label: "Stats"),
        ],
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
