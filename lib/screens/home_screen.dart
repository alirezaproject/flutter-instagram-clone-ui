import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:instagram/widgets/bottomsheet_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

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
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.4,
                        minChildSize: 0.2,
                        maxChildSize: 0.7,
                        builder: (context, scrollController) {
                          return SharedBottomSheet(
                              controller: scrollController);
                        },
                      );
                    },
                  );
                },
                child: Text('Open BottomSheet'),
              ),
            ),
            SliverToBoxAdapter(child: _getStoryList()),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 34,
                    ),
                    _headerPost(theme),
                    SizedBox(
                      height: 20,
                    ),
                    _postContent(theme: theme),
                  ],
                );
              }, childCount: 4),
            ),
          ],
        ),
      ),
    );
  }

  Widget _storyBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(6),
            color: kSecondaryColor,
            dashPattern: [40, 10],
            strokeWidth: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: 58,
                height: 58,
                child: Image.asset(kImageAsset + 'profile.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'test',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _postList(ThemeData theme) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 35,
            ),
            _headerPost(theme),
            SizedBox(
              height: 20,
            ),
            _postContent(theme: theme),
          ],
        );
      },
    );
  }

  Widget _headerPost(ThemeData theme) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _storyBox(),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('alireza_project', style: theme.textTheme.displaySmall),
                Text('FullStack Developer', style: theme.textTheme.bodySmall),
              ],
            ),
          ),
          Spacer(),
          Image.asset(kImageAsset + 'icon_menu.png'),
        ],
      ),
    );
  }

  Widget _addStoryBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
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
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(kImageAsset + 'icon_plus.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your story',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _getStoryList() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0)
            return _addStoryBox();
          else
            return _storyBox();
        },
      ),
    );
  }
}

class _postContent extends StatelessWidget {
  const _postContent({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: 394,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              kImageAsset + 'post.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset(kImageAsset + 'icon_video.png'),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(kImageAsset + 'icon_heart.png'),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '2.5 k',
                            style: theme.textTheme.displayMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(kImageAsset + 'icon_comments.png'),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '1.5 k',
                            style: theme.textTheme.displayMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 42,
                      ),
                      Image.asset(kImageAsset + 'icon_share.png'),
                      SizedBox(
                        width: 42,
                      ),
                      Image.asset(kImageAsset + 'icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*
SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return DraggableScrollableSheet(
                        initialChildSize: 0.4,
                        minChildSize: 0.2,
                        maxChildSize: 0.7,
                        builder: (context, scrollController) {
                          return SharedBottomSheet(
                              controller: scrollController);
                        },
                      );
                    },
                  );
                },
                child: Text('Open BottomSheet'),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0)
                      return _addStoryBox();
                    else
                      return _storyBox();
                  },
                ),
              ),
              _postList(theme)
            ],
          ),
        ),
 */
