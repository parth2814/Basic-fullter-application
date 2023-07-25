import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants.dart';

import '../core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/yeah.png'),
              radius: 60,
            ),
            SizedBox(height: kDouble20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Flutter Mapp'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('info@fluttermapp.com'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('FlutterMapp.com'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
            child: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, isDark, child) {
                return Icon(isDark ? Icons.wb_sunny : Icons.nightlight_round);
              },
            )));
  }
}
