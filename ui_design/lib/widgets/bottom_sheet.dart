import 'package:flutter/material.dart';
import 'textbutton_custom.dart';

Future<dynamic> bottomSheet(BuildContext context) {
  return showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: false,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 20,
                right: 15,
                left: 15),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 4,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 8),
                const TextButtonCustom(
                  text: "Invite",
                  iconData: Icons.link,
                  color: Colors.black,
                ),
                const SizedBox(height: 8),
                const TextButtonCustom(
                  text: "Add member",
                  iconData: Icons.person_add_alt,
                  color: Colors.black,
                ),
                const SizedBox(height: 8),
                const TextButtonCustom(
                  text: "Add Group",
                  iconData: Icons.groups_2_outlined,
                  color: Colors.black,
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        );
      });
}
