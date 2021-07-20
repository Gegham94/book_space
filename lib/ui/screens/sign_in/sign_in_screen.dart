import 'package:book_space/constants/bs_string_keys.dart';
import 'package:book_space/constants/constants.dart';
import 'package:book_space/constants/widget_styles.dart';
import 'package:book_space/mixins/validation.dart';
import 'package:book_space/ui/screens/commons/authorization_scaffold.dart';
import 'package:book_space/ui/screens/sign_up/sign_up_screen.dart';
import 'package:book_space/ui/widgets/bs_social_buttons.dart';
import 'package:book_space/ui/widgets/linked_text.dart';
import 'package:book_space/utilities/ui_utilities.dart';
import 'package:book_space/values/bs_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatelessWidget with Validation {
  SignInScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deltaSpace04 = screenHeight(context) * 0.04;
    final deltaSpace01 = screenHeight(context) * 0.01;

    return AuthorizationScaffold(
      title: BSStrings[BSStringKeys.sign_in],
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BSSocialButtons(
                title: BSStrings[BSStringKeys.sign_in_with]!,
                onPressButtons: _socialButtonOnPressed,
              ),
              SizedBox(height: deltaSpace04),
              Text(
                BSStrings[BSStringKeys.or]!,
                style: titleTextStyle,
              ),
              SizedBox(height: deltaSpace04),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          inputDecoration(BSStrings[BSStringKeys.email]!),
                      validator: emailValidation,
                      controller: emailController,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration:
                          inputDecoration(BSStrings[BSStringKeys.password]!),
                      validator: passwordValidation,
                      controller: passwordController,
                      obscureText: true,
                    ),
                    SizedBox(height: deltaSpace04),
                    buildSubmitButton(
                      onPress: _signInButtonOnPressed,
                      title: BSStrings[BSStringKeys.sign_in]!,
                    ),
                    SizedBox(height: deltaSpace01),
                    LinkedText(
                      text: BSStrings[BSStringKeys.need_an_account]!,
                      linkText: BSStrings[BSStringKeys.sign_up]!,
                      onTap: () => _signUpLinkedTextOnTap(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUpLinkedTextOnTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }

  void _signInButtonOnPressed() {
    if (_formKey.currentState?.validate() ?? false) {}
  }

  void _socialButtonOnPressed(type) {
    print(type);
  }
}
