import 'package:book_space/constants/bs_string_keys.dart';
import 'package:book_space/enums/regex_pattern.dart';
import 'package:book_space/values/bs_strings.dart';

mixin Validation {
  bool _isEmailValidate({required String email}) {
    if (email.isNotEmpty && RegexPattern.email.pattern.hasMatch(email)) {
      return true;
    }
    return false;
  }

  String? emailValidation(email) {
    if (email != null && email.isEmpty) {
      return BSStrings[BSStringKeys.empty_email_error_text];
    }
    if (!_isEmailValidate(email: email)) {
      return BSStrings[BSStringKeys.invalid_email_error_text];
    }
    return null;
  }

  bool _isPasswordValidate({required String password}) {
    if (RegexPattern.password.pattern.hasMatch(password)) {
      return true;
    }
    return false;
  }

  String? passwordValidation(String? pass) {
    if (pass != null && pass.isEmpty) {
      return BSStrings[BSStringKeys.empty_password_error_text];
    }
    if (!_isPasswordValidate(password: pass!)) {
      return BSStrings[BSStringKeys.invalid_password_error_text];
    }
    return null;
  }

  String? confirmPasswordValidation(String pass, String? confirmPass) {
    if (confirmPass != null && confirmPass.isEmpty) {
      return BSStrings[BSStringKeys.empty_password_error_text];
    }
    if (confirmPass != pass) {
      return BSStrings[BSStringKeys.password_matches_error_text];
    }
  }
}
