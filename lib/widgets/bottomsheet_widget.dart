import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SharedBottomSheet extends StatelessWidget {
  const SharedBottomSheet({super.key, required this.controller});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.1),
          padding: EdgeInsets.symmetric(horizontal: 44),
          height: 300,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 4,
            ),
            itemCount: 30,
            controller: controller,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.red,
              );
            },
          ),
        ),
      ),
    );
  }
}
