import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payv_attendees/colors/custom_colors.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({
    super.key,
    required this.onTap,
    required this.colored,
    required this.imagePath,
    required this.label,
  });

  final VoidCallback onTap;
  final bool colored;
  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 91,
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: colored ? CustomColors.buttonColor1 : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              imagePath,
              height: 36,
              width: 36,
              color: colored ? Colors.white : Colors.grey,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: colored ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
