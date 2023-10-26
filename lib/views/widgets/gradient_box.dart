import 'package:flutter/material.dart';

import 'package:payv_attendees/colors/custom_colors.dart';
class GradientBox extends StatelessWidget {
  const GradientBox({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: CustomColors.colorGradient1,
      ),
      child: child,
    );
  }
}
