import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/src/screens/home/widgets/search_card.dart';
import 'package:ticket_app/src/screens/home/widgets/start.dart';
import 'package:ticket_app/src/widgets/wrappers/content_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: const [
        SizedBox(height: 28.0),
        HomeScreenStart(),
        SizedBox(height: 36.0),
        HomeScreenSearchCard(),
        SizedBox(height: 32.0),
        ContentSection(
          name: 'Музыкально отлететь',
          buttonText: 'Показать все места',
          child: Placeholder(fallbackHeight: 220.0),
        )
      ],
    );
  }
}
