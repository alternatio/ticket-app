import 'package:flutter/material.dart';
import 'package:ticket_app/src/screens/main/index.dart';
import 'package:ticket_app/src/styles/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: AppThemes.darkTheme,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
