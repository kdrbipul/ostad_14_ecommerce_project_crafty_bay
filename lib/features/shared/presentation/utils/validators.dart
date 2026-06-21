import 'package:email_validator/email_validator.dart';

class Validators {
 static String? validateInput (String? input, String message){
    if (input != null){
      return message;
    }
    return null;
  }

 static String? validateEmail (String? input){
    if (EmailValidator.validate(input ?? '') == false){
      return "Enter your valid email address";
    }
    return null;
  }

 static String? validatePassword (String? input){
    if ((input ?? '').length <6){
      return "Enter your password more than 5 characters";
    }
    return null;
  }

 static String? validateConfirmPassword (String? input, String password){
    if (input == password){
      return "Confirm password dose not match";
    }
    return null;
  }
}