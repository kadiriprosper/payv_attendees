import 'package:flutter/material.dart';
import 'package:payv_attendees/colors/custom_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.colored,
  });

  final Widget label;
  final VoidCallback onPressed;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 331,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 331,
        height: 52,
        color: colored ? CustomColors.buttonColor1 : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color:
                colored ? CustomColors.buttonColor1 : CustomColors.borderColor1,
          ),
        ),
        child: label,
      ),
    );
  }
}
