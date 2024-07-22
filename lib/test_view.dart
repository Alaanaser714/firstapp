// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/testdata_controller.dart';
import 'package:flutter_firstapplication/core/class/statusrequest.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(backgroundColor:AppColor.primaryColor,
          title: const Text("Title")),
        body: GetBuilder<TestController>(builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return  Center(child:Lottie.asset("assets/lottie/loading.json",width: 250,height: 250));
          } else if (controller.statusRequest == StatusRequest.offlinefailure) {
            return Center(child:Lottie.asset("assets/lottie/offline.json",width: 250,height: 250));
          } else if (controller.statusRequest == StatusRequest.serverfailure) {
            return Center(child:Lottie.asset("assets/lottie/server.json",width: 250,height: 250));
          } else if (controller.statusRequest == StatusRequest.failure) {
            return Center(child:Lottie.asset("assets/lottie/nodata.json",width: 250,height: 250));
          } else {
            return ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data}");
                });
          }
        }),
      ),
    );
  }
}
