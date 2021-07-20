import 'package:book_space/constants/bs_string_keys.dart';
import 'package:book_space/constants/constants.dart';
import 'package:book_space/constants/widget_styles.dart';
import 'package:book_space/mixins/validation.dart';
import 'package:book_space/ui/screens/commons/authorization_scaffold.dart';
import 'package:book_space/ui/widgets/linked_text.dart';
import 'package:book_space/utilities/ui_utilities.dart';
import 'package:book_space/values/bs_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget with Validation {
  SignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  TextEditingController? confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deltaSpace01 = screenHeight(context) * 0.01;
    final deltaSpace02 = screenHeight(context) * 0.02;
    final deltaSpace05 = screenHeight(context) * 0.05;

    return AuthorizationScaffold(
      title: BSStrings[BSStringKeys.sign_up]!,
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  style: inputTextStyle,
                  decoration: inputDecoration(
                    BSStrings[BSStringKeys.email]!,
                  ),
                  validator: emailValidation,
                  controller: emailController,
                ),
                SizedBox(height: deltaSpace02),
                TextFormField(
                  style: inputTextStyle,
                  decoration: inputDecoration(
                    BSStrings[BSStringKeys.password]!,
                  ),
                  validator: passwordValidation,
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(height: deltaSpace02),
                TextFormField(
                  style: inputTextStyle,
                  decoration: inputDecoration(
                    BSStrings[BSStringKeys.confirm_password]!,
                  ),
                  validator: (value) {
                    return confirmPasswordValidation(
                        passwordController!.text, value);
                  },
                  controller: confirmPassController,
                  obscureText: true,
                ),
                SizedBox(height: deltaSpace05),
                buildSubmitButton(
                  onPress: _signUpButtonOnPressed,
                  title: BSStrings[BSStringKeys.sign_up]!,
                ),
                SizedBox(height: deltaSpace01),
                LinkedText(
                  text: BSStrings[BSStringKeys.already_remember]!,
                  linkText: BSStrings[BSStringKeys.sign_in]!,
                  onTap: () => _signInLinkedTextOnTap(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUpButtonOnPressed() {
    if (_formKey.currentState?.validate() ?? false) {}
  }

  void _signInLinkedTextOnTap(BuildContext context) {
    Navigator.pop(context);
  }
}
