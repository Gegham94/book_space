import 'package:book_space/app/navigation_screens.dart';
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
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with Validation {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

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

  void _signInButtonOnPressed() {
    firebaseAuth
        .signInWithEmailAndPassword(
            email: emailController!.text, password: passwordController!.text)
        .then((result) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => NavigationScreen(uid: result.user!.uid)),
      );
    }).catchError((err) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                ElevatedButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }

  void _signUpLinkedTextOnTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      ),
    );
  }

  void _socialButtonOnPressed(type) {
    print(type);
  }
}
