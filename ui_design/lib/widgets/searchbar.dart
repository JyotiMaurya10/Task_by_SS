import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import '../utils/color.dart';

class SearchBarAnimation extends StatefulWidget {
  final bool isSearchEnable;

  SearchBarAnimation({
    super.key,
    required this.isSearchEnable,
  });

  @override
  State<SearchBarAnimation> createState() => _SearchBarAnimationState();
}

class _SearchBarAnimationState extends State<SearchBarAnimation> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return AnimatedSearchBar(
      label: 'Members',
      labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      searchStyle: const TextStyle(color: blackColor),
      cursorColor: blackColor,
      closeIcon: const Text(
        'Cancel',
        style: TextStyle(fontSize: 16.0, color: blackColor),
      ),
      textInputAction: TextInputAction.done,
      searchDecoration: InputDecoration(
        hintText: 'Search member',
        hintStyle: const TextStyle(color: blackColor, fontSize: 16),
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
      ),
      onChanged: (value) {
        setState(() {
          searchText = value;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          searchText = value;
        });
      },
    );
  }
}