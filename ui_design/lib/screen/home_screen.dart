import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/button_custom_.dart';
import '../widgets/image_custom.dart';
import '../widgets/members.dart';
import '../widgets/mute_switch.dart';
import '../widgets/searchbar.dart';
import '../widgets/textbutton_custom.dart';
import '../utils/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String content =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at diam odio. Sed ut libero a lacus maximus vestibulum at quis quam. Sed eleifend massa ante, non vestibulum justo consequat sit amet. Curabitur venenatis mattis sem. Sed pretium congue erat, a pellentesque nisi vulputate a. Aliquam vitae leo libero. Fusce laoreet enim et purus pretium porta. Mauris porta maximus odio. Integer ultrices turpis a urna euismod porttitor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris sed tortor vitae ex blandit fermentum.";
  bool isSearchEnable = false;
  final ScrollController _mainscrollController = ScrollController();
  double _titlePadding = 1.0;
  double _avatarOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    _mainscrollController.addListener(() {
      setState(() {
        _avatarOpacity = (_mainscrollController.offset / 200).clamp(0.0, 1.0);
        _titlePadding =
            (_mainscrollController.offset / 200 * 40).clamp(16.0, 56.0);
      });
    });
  }

  @override
  void dispose() {
    _mainscrollController.dispose();
    super.dispose();
  }

  void _scrollToSearchBar() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _mainscrollController.animateTo(
        _mainscrollController.position.minScrollExtent + 240,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void _toggleSearch() {
    setState(() {
      if (!isSearchEnable) {
        isSearchEnable = true;
        _scrollToSearchBar();
      } else {
        _mainscrollController.animateTo(
          _mainscrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        isSearchEnable = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: CustomScrollView(
          controller: _mainscrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              collapsedHeight: 60,
              pinned: true,
              backgroundColor: mainColor,
              elevation: 0,
              flexibleSpace: AppBarWidget(
                avatarOpacity: _avatarOpacity,
              ),
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black26,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      )),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Visibility(
                      visible: !isSearchEnable,
                      child: Column(
                        children: [
                          ReadMoreText(
                            content,
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Length,
                            trimCollapsedText: "Read more",
                            trimExpandedText: "Read less",
                            lessStyle: const TextStyle(color: secondaryColor),
                            moreStyle: const TextStyle(color: secondaryColor),
                            style: const TextStyle(fontSize: 17, height: 1.2),
                          ),
                          const SizedBox(height: 20),
                          const OutdoorButton(),
                          const SizedBox(height: 35),
                          const MediaDocsLinks(),
                          const MuteSwitch(),
                          const TextButtonCustom(
                            text: "Clear chat",
                            iconData: Icons.delete_outline_rounded,
                            color: blackColor,
                          ),
                          const TextButtonCustom(
                            text: "Encryption",
                            iconData: Icons.enhanced_encryption_rounded,
                            color: blackColor,
                          ),
                          const TextButtonCustom(
                            text: "Exit community",
                            iconData: Icons.exit_to_app_rounded,
                            color: mainColor,
                          ),
                          const TextButtonCustom(
                            text: "Report",
                            iconData: Icons.thumb_down_alt_outlined,
                            color: mainColor,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: _toggleSearch,
                      child: SizedBox(  

                        child: SearchBarAnimation(
                          isSearchEnable: isSearchEnable, 
                        ),
                      ),
                    ),
                    Members(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
