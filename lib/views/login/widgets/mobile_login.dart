// flutter
import 'package:flutter/material.dart';

// widgets
import 'social_signup.dart';
import 'login_form.dart';
import 'top_image.dart';

class MobileLoginView extends StatelessWidget {
  const MobileLoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            const Spacer(),
          ],
        ),
        const SocialSignUp()
      ],
    );
  }
}
