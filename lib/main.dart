import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget_tree.dart';

import 'core/notifiers.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkMode,
      builder: (context, isDark, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false, // To remove debug banner
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: isDark ? Brightness.dark : Brightness.light,
              primarySwatch: Colors.blue,
              useMaterial3: true,
            ),
            home: WidgetTree());
      },
    );
  }
}
