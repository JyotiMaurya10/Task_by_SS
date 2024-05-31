import 'package:flutter/material.dart';
import '../utils/color.dart';

class MuteSwitch extends StatefulWidget {
  const MuteSwitch({super.key});

  @override
  State<MuteSwitch> createState() => _MuteSwitchState();
}

class _MuteSwitchState extends State<MuteSwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Mute notification",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Switch(
              value: isSwitched,
              thumbColor: WidgetStateProperty.all(greyColor),
              trackColor: WidgetStateProperty.all(whiteColor),
              onChanged: (_) {
                setState(() {
                  isSwitched = !isSwitched;
                });
              }),
        ],
      ),
    );
  }
}
