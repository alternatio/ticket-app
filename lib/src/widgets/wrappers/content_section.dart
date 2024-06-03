import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/fonts.dart';
import 'package:ticket_app/src/widgets/buttons/common_button.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    super.key,
    required this.name,
    required this.child,
    this.buttonText,
    this.buttonOnTap,
  });

  final String name;
  final Widget child;
  final String? buttonText;
  final void Function()? buttonOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(name, style: AppFonts.title1),
      const SizedBox(height: 25.0),
      child,
      const SizedBox(height: 16.0),
      if (buttonText != null)
        CommonButton(
          text: 'Показать все места',
          onPressed: () {},
        ),
    ]);
  }
}
