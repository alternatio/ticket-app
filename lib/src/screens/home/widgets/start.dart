import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/fonts.dart';

class HomeScreenStart extends StatelessWidget {
  const HomeScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 172.0),
        child: const Text(
          'Поиск дешевых авиабилетов',
          textAlign: TextAlign.center,
          style: AppFonts.title1,
        ),
      ),
    );
  }
}
