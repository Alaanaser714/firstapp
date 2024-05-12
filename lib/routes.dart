import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/view/screen/auth/checkemail.dart';
import 'package:flutter_firstapplication/view/screen/auth/forgetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/login.dart';
import 'package:flutter_firstapplication/view/screen/auth/resetforgetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/signup.dart';
import 'package:flutter_firstapplication/view/screen/auth/success_resetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/success_signup.dart';
import 'package:flutter_firstapplication/view/screen/auth/verfiycode.dart';
import 'package:flutter_firstapplication/view/screen/auth/verfiycodesignup.dart';
import 'package:flutter_firstapplication/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkemail: (context) => const CheckEmail(),
    AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),

    

  AppRoute.onBoarding: (context) => const OnBoarding(),
};
