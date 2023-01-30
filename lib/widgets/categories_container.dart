import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CategoryContainer extends StatelessWidget {
  final String imageString;
  final String title;
  CategoryContainer({required this.imageString, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Neumorphic(
          style: const NeumorphicStyle(),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: NeumorphicColors.background,
              child: Image.asset(imageString),
            ),
          ),
        ),
        const SizedBox(height: 15),
        NeumorphicText(
          title,
          style: const NeumorphicStyle(
            color: Colors.black,
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
