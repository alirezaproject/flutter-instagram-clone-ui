import 'dart:ui';

import "package:flutter/material.dart";
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/button_widget.dart';
import 'package:instagram/widgets/sign_up_widget.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "${kImageAsset}switch_account_background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.5),
                                  Colors.white.withOpacity(0.2),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(15)),
                        width: 340,
                        height: 352,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                fit: BoxFit.cover,
                                width: 130,
                                height: 130,
                                image: AssetImage("${kImageAsset}profile.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Alireza Shokouhian',
                              style: theme.textTheme.headline4,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                height: 46,
                                width: 129,
                                child: Button(
                                  text: 'Confirm',
                                )),
                            SizedBox(
                              height: 32,
                            ),
                            Text(
                              'switch account',
                              style: theme.textTheme.headline4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 163, 0, 63),
            child: SignUp(),
          )
        ],
      ),
    );
  }
}
