import 'package:flutter/material.dart';
import 'package:sample_app/view/Login/scratch_card_screen.dart';
import 'package:sample_app/view/Login/setMpin.dart';
import 'package:sample_app/view/Login/signup.dart';
import 'package:sample_app/view/Login/validateMpin.dart';

import '../../view/Login/forgotpassword.dart';
import '../../view/Login/login.dart';
import '../../view/Login/loginWithMobileView.dart';
import '../../view/Login/otp.dart';
import 'appRoutes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.login: (context) => LoginScreen(),
      AppRoutes.forgotpassword: (context) => ForgotPasswordPage(),
      AppRoutes.loginWithMobile: (context) => LoginWithMobileScreen(),
      AppRoutes.otpScreen: (context) => Otp(),
      AppRoutes.signupScreen: (context) => SignUpPage(),
      AppRoutes.SetMpinScreen: (context) => SetMPINPage(),
      AppRoutes.ValidateMpin: (context) => ValidateMpin(),
      AppRoutes.dismissableWidget: (context) => ScratchCardScreen()
    };
  }
}
