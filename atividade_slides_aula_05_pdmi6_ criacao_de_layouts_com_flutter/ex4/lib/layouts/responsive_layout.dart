import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context) portraitBuilder;
  final Widget Function(BuildContext context) landscapeBuilder;

  const ResponsiveLayout({
    super.key,
    required this.portraitBuilder,
    required this.landscapeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return portraitBuilder(context);
    } else {
      return landscapeBuilder(context);
    }
  }
}