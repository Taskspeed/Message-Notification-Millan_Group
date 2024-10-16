// utils
import 'package:babysitterapp/widgets/auth/account_check.dart';
import 'package:babysitterapp/utils/styles.dart';
import 'package:flutter/material.dart';

// actions
import 'package:babysitterapp/utils/goto_page.dart';

// screens
import 'package:babysitterapp/views/main/index.dart';
import 'package:babysitterapp/views/auth/login.dart';

class SignUpForm extends StatelessWidget with GlobalStyles {
  SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: GlobalStyles.kPrimaryColor,
            onSaved: (String? email) {},
            decoration: const InputDecoration(
              hintText: 'Your email',
              prefixIcon: Padding(
                padding: EdgeInsets.all(GlobalStyles.defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: GlobalStyles.defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: GlobalStyles.kPrimaryColor,
              decoration: const InputDecoration(
                hintText: 'Your password',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(GlobalStyles.defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: GlobalStyles.defaultPadding / 2),
          ElevatedButton(
            onPressed: () {
              goToPage(context, const IndexScreen(), 'rightToLeftWithFade');
            },
            child: Text('Sign Up'.toUpperCase()),
          ),
          const SizedBox(height: GlobalStyles.defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              goToPage(context, const LoginScreen(), 'rightToLeftWithFade');
            },
          ),
        ],
      ),
    );
  }
}
