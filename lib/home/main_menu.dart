import 'package:flutter/material.dart';
import 'package:iwastesting/provider/cookie_provider.dart';
import 'package:provider/provider.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({super.key});

  @override
  State<MenuMain> createState() => _MainMenuState();
}

class _MainMenuState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CookieProvider>(
        builder: (context, a, state) {
          return Center(
              child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    a.cookieCounterIncrementFunction(a.cookieCounterIncrement);
                  },
                  icon: Icon(Icons.cookie_outlined)),
              Text(
                  style: Theme.of(context).textTheme.displayLarge,
                  a.cookieCounter.toString())
            ],
          ));
        },
      ),
    );
  }
}
