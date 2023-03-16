import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: false,
        title: Container(
          child: Image.asset(kImageAsset + 'mood.png'),
          width: 128,
          height: 24,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 18),
            child: Image.asset(kImageAsset + 'icon_direct.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: _storyBox(),
        ),
      ),
    );
  }

  DottedBorder _storyBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(6),
      color: kSecondaryColor,
      dashPattern: [50, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 58,
          height: 58,
          child: Image.asset(kImageAsset + 'profile.jpg'),
        ),
      ),
    );
  }

  Widget _addStoryBox() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
          child: Image.asset(kImageAsset + 'icon_plus.png'),
        ),
      ),
    );
  }
}
