
import 'package:flutter/cupertino.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/date/datesource/static/static.dart';
import 'package:get/get.dart';


abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
       Get.offAllNamed(AppRoute.login) ; 
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}