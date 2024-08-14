import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/core/middleware/mymiddleware.dart';

import 'package:flutter_firstapplication/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/login.dart';
import 'package:flutter_firstapplication/view/screen/auth/forgetpassword/resetforgetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/signup.dart';
import 'package:flutter_firstapplication/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:flutter_firstapplication/view/screen/auth/success_signup.dart';
import 'package:flutter_firstapplication/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:flutter_firstapplication/view/screen/auth/verfiycodesignup.dart';
import 'package:flutter_firstapplication/view/screen/home.dart';
import 'package:flutter_firstapplication/view/screen/language.dart';
import 'package:flutter_firstapplication/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: () => const OffersView()),

  // Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  // Home
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  // GetPage(name: AppRoute.items, page: () => const Items()),
  // GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  // GetPage(name: AppRoute.myfavroite, page: () => const MyFavorite()),
  // GetPage(name: AppRoute.cart, page: () => const Cart()),
  // //checkout
  // GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  // GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  // GetPage(name: AppRoute.checkout, page: () => const Checkout()),
  // GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  // GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  // GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  //   GetPage(name: AppRoute.orderstracking, page: () => const OrdersTracking()),
  // GetPage(
  //     name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),
  // GetPage(name: AppRoute.offers, page: () => const OffersView()),
];
