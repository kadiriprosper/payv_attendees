import 'package:flutter/material.dart';
import 'package:payv_attendees/views/widgets/gradient_box.dart';

class MainScreenWidgetBox extends StatelessWidget {
  const MainScreenWidgetBox({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBox(
        child: Align(
          alignment: Alignment.bottomCenter,
          //TODO: Probably put this guy in a safe area
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(19),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
