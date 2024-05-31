import 'package:flutter/material.dart';
import '../utils/color.dart';
import 'bottom_sheet.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.avatarOpacity}) : super(key: key);
  final double avatarOpacity;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return FlexibleSpaceBar(
          titlePadding: const EdgeInsets.all(0),
          centerTitle: false,
          collapseMode: CollapseMode.parallax,
          title: Stack(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: mainColor,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Visibility(
                        visible: avatarOpacity == 1,
                        child: const SizedBox(
                          width: 50,
                        )),
                    Visibility(
                      visible: avatarOpacity == 1,
                      child: AnimatedOpacity(
                          opacity: avatarOpacity,
                          duration: const Duration(seconds: 1),
                          child: avatarOpacity == 1
                              ? const Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          AssetImage("assets/images/image.png"),
                                    ),
                                    SizedBox(width: 8)
                                  ],
                                )
                              : const SizedBox.shrink()),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("The weeknd",
                            style: avatarOpacity == 1
                                ? const TextStyle(
                                    color: whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)
                                : const TextStyle(
                                    color: whiteColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                        const SizedBox(height: 3),
                        Text("Community • +11K Members",
                            style: avatarOpacity == 1
                                ? const TextStyle(
                                    color: whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)
                                : const TextStyle(
                                    color: whiteColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: avatarOpacity != 1
                          ? BoxDecoration(
                              border: Border.all(color: whiteColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)))
                          : const BoxDecoration(),
                      child: GestureDetector(
                        onTap: () {
                          bottomSheet(context);
                        },
                        child: Icon(
                          avatarOpacity != 1
                              ? Icons.share_outlined
                              : Icons.more_vert,
                          color: whiteColor,
                          size: avatarOpacity != 1 ? 14 : 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          background: Image.asset(
            "assets/images/image.png",
            fit: BoxFit.cover,
          ));
    });
  }
}
