import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'theme/light_mode.dart';
import 'theme/dark_mode.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeMode,
    );
  }
}
