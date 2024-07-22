// ignore_for_file: use_super_parameters, deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/homescreen_controller.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/view/widget/home/custombottomappbarhome.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.primaryColor,
                onPressed: () {
                  Get.toNamed(AppRoute.cart);
                },
                child: const Icon(Icons.shopping_basket_outlined)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: WillPopScope(
                onWillPop: () {
                  Get.defaultDialog(
                    titleStyle: const TextStyle(
                      
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                    cancelTextColor: AppColor.secondColor,
                    confirmTextColor: AppColor.secondColor,
                    buttonColor: AppColor.thirdColor,
                    title: "Warning",
                    middleText: "Do You Want To Exit Form The App",
                    onCancel: () {},
                    onConfirm: () {
                      exit(0);
                    },
                  );
                  return Future.value(false);
                },
                child: controller.listPage.elementAt(controller.currentpage))));
  }
}
