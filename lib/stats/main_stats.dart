import 'package:flutter/material.dart';
import 'package:iwastesting/provider/cookie_provider.dart';

class StatsMain extends StatefulWidget {
  const StatsMain({super.key});

  @override
  State<StatsMain> createState() => _StatsMainState();
}

class _StatsMainState extends State<StatsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [Text("Lifetime Cookies: ")],
      )),
    );
  }
}
