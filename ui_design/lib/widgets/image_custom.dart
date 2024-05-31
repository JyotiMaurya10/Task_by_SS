import 'package:flutter/material.dart';

class MediaDocsLinks extends StatelessWidget {
  const MediaDocsLinks({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Media, docs and links",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
        const SizedBox(height: 12),
         SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/image.png',
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/image.png',
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/image.png',
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/image.png',
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
     const SizedBox(height: 12),
    ],);
   
  }
}
