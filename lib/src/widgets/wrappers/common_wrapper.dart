import 'package:flutter/material.dart';

class CommonWrapper extends StatelessWidget {
  const CommonWrapper(
      {super.key,
      required this.child,
      this.appBar,
      this.bottomNavigationBar,
      this.withSafeArea});

  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final bool? withSafeArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: withSafeArea == true ? SafeArea(child: child) : child,
    );
  }
}
