const emailPattern = r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]{2,6}";
const passwordPattern =
    r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[*#!@$%^&*()._+=-])(?!.*\s\S).{4,14}$";

enum RegexPattern {
  email,
  password,
}

extension RegexPatternExtension on RegexPattern {
  RegExp get pattern {
    switch (this) {
      case RegexPattern.email:
        return RegExp(emailPattern);
      case RegexPattern.password:
        return RegExp(passwordPattern);
    }
  }
}
