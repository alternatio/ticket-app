import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/colors.dart';

enum CommonButtonType { common, neutral, success }

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = CommonButtonType.common,
  });

  final String text;
  final void Function()? onPressed;
  final CommonButtonType type;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(_getButtonBackgroundColor())),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  Color? _getButtonBackgroundColor() {
    switch (type) {
      case CommonButtonType.neutral:
        return AppColors.blue;
      case CommonButtonType.success:
        return AppColors.green;
      default:
        return null;
    }
  }
}
