import 'package:flutter/material.dart';
import 'package:iwastesting/provider/cookie_provider.dart';
import 'package:provider/provider.dart';

class MarketMain extends StatefulWidget {
  const MarketMain({super.key});

  @override
  State<MarketMain> createState() => _MarketMainState();
}

class _MarketMainState extends State<MarketMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                child: Center(
                  child: Column(
                    children: [
                      Text("Number of upgrades: "),
                      IconButton(
                        onPressed: () {
                          var cookieProvider = Provider.of<CookieProvider>(
                              context,
                              listen: false);
                          cookieProvider.cookieUpgrade(5);
                        },
                        icon: Icon(Icons.add_business_sharp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
