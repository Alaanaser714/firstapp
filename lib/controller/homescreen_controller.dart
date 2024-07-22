
// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/view/screen/home.dart';
import 'package:flutter_firstapplication/view/screen/notifacation.dart';
import 'package:flutter_firstapplication/view/screen/offers.dart';
import 'package:flutter_firstapplication/view/screen/settings.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    const NotificationView() , 
    const OffersView(),
    const Settings()
  ];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "notifcation", "icon": Icons.notifications_active_outlined},
    {"title": "offers", "icon": Icons.offline_bolt_outlined},
    {"title": "settings", "icon": Icons.settings}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}