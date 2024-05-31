import 'package:flutter/material.dart';
import '../utils/color.dart';

class OutdoorButton extends StatelessWidget {
  const OutdoorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Outdoor", style: TextStyle(color: secondaryColor)),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Outdoor", style: TextStyle(color: secondaryColor)),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Outdoor", style: TextStyle(color: secondaryColor)),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("Outdoor", style: TextStyle(color: secondaryColor)),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("+1", style: TextStyle(color: secondaryColor)),
            ),
          ),
        ],
      ),
    );
  }
}
