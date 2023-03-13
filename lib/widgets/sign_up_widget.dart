import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account ? / ',
            style: theme.textTheme.headline4!
                .merge(TextStyle(color: Colors.grey[700]))),
        Text(' Sign up', style: theme.textTheme.headline4),
      ],
    );
  }
}
