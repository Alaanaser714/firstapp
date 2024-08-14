// // ignore_for_file: overridden_fields, annotate_overrides, override_on_non_overriding_member, avoid_print

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/home_controller.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/items_data.dart';
// import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
// import 'package:get/get.dart';

// abstract class ItemsController extends GetxController {
//   intialData();
//   changeCat(int val, String catval);
//   getItems(String categoryid);
//   goToPageProductDetails(ItemsModel itemsModel);
// }

// class ItemsControllerImp extends SearchMixController {
//   List categories = [];
//   String? catid;
//   int? selectedCat;

//   ItemsData testData = ItemsData(Get.find());
//   String deliverytime = "";

//   List data = [];

//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();

//   @override
//   void onInit() {
//     search = TextEditingController();
//     intialData();
//     super.onInit();
//   }

//   @override
//   intialData() {
//     deliverytime = myServices.sharedPreferences.getString("deliverytime")!;
//     categories = Get.arguments['categories'];
//     selectedCat = Get.arguments['selectedcat'];
//     catid = Get.arguments['catid'];
//     getItems(catid!);
//   }

//   @override
//   changeCat(val, catval) {
//     selectedCat = val;
//     catid = catval;
//     getItems(catid!);
//     update();
//   }

//   @override
//   getItems(categoryid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData(
//         categoryid, myServices.sharedPreferences.getString("id")!);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         data.addAll(response['data']);
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//   @override
//   goToPageProductDetails(itemsModel) {
//     Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
//   }
// }
























