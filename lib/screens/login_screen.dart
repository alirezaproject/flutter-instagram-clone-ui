import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:instagram/widgets/button_widget.dart';
import 'package:instagram/widgets/sign_up_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff323A99),
            Color(0xffF98BFC),
          ],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            _getImageContainer(),
            _getContainerBox(),
          ],
        ),
      ),
    );
  }
}

class _getContainerBox extends StatefulWidget {
  const _getContainerBox({
    Key? key,
  }) : super(key: key);

  @override
  State<_getContainerBox> createState() => _getContainerBoxState();
}

class _getContainerBoxState extends State<_getContainerBox> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();

    focusNode1.addListener(() {
      setState(() {});
    });

    focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: theme.textTheme.headlineSmall,
                    ),
                    Image(image: AssetImage(kImageAsset + 'mood.png'))
                  ],
                ),
                SizedBox(height: 34),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    style: theme.textTheme.headlineMedium,
                    focusNode: focusNode1,
                    cursorColor: kSecondaryColor,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: theme.textTheme.headlineLarge!.merge(
                          TextStyle(
                              color: focusNode1.hasFocus
                                  ? kSecondaryColor
                                  : kTextFieldBorderSideColor)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: kSecondaryColor,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: kTextFieldBorderSideColor, width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    style: theme.textTheme.headlineMedium,
                    cursorColor: kSecondaryColor,
                    focusNode: focusNode2,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: theme.textTheme.titleLarge!.merge(TextStyle(
                          color: focusNode2.hasFocus
                              ? kSecondaryColor
                              : kTextFieldBorderSideColor)),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 3,
                            color: kSecondaryColor,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: kTextFieldBorderSideColor, width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: SizedBox(
                    height: 46,
                    width: 129,
                    child: Button(text: 'Sign In'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SignUp(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _getImageContainer extends StatelessWidget {
  const _getImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 80,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image(
                image: AssetImage(kImageAsset + 'rocket.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
