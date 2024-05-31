import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  final String text;
  final Color color;
  final IconData iconData;
  const TextButtonCustom(
      {super.key, required this.text, required this.iconData, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton( 
        onPressed: () {},
        child: Row(
          children: [
            Icon(iconData, color: color,
              size: 25,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(color: color,fontSize: 18),
            )
          ],
        ));
  }
}
