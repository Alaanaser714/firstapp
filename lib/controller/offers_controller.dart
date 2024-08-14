// // ignore_for_file: avoid_print, overridden_fields, annotate_overrides

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/home_controller.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/offers_data.dart';
// import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
// import 'package:get/get.dart';

// class OffersController extends SearchMixController {
//   OffersData offersData = OffersData(Get.find());

//   List<ItemsModel> data = [];

//   late StatusRequest statusRequest;

//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await offersData.getData();
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List listdata2 = response['data'];
//         data.addAll(listdata2.map((e) => ItemsModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   @override
//   void onInit() {
//       search = TextEditingController();
//     getData();
//     super.onInit();
//   }
// }
