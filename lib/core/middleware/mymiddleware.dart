
// // ignore_for_file: body_might_complete_normally_nullable

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:get/get.dart';

// class MyMiddleWare extends GetMiddleware {
//   @override
//   int? get priority => 1;

//   MyServices myServices = Get.find() ; 

//   @override
//   RouteSettings? redirect(String? route) {
//     if(myServices.sharedPreferences.getString("step") == "2"){
//       return const RouteSettings(name: AppRoute.homepage) ; 
//      }
//      if(myServices.sharedPreferences.getString("step") == "1"){
//       return const RouteSettings(name: AppRoute.login) ; 
//      }
//       return null;
//   }
// }




// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/core/services/services.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ; 

  @override
  RouteSettings? redirect(String? route) {
     if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: AppRoute.login) ; 
     }
  }
}
