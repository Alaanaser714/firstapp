// // ignore_for_file: overridden_fields, annotate_overrides, avoid_print

// import 'package:flutter/cupertino.dart';
// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/home_data.dart';
// import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
// import 'package:get/get.dart';

// abstract class HomeController extends SearchMixController {
//   initialData();
//   getdata();
//   goToItems(List categories, int selectedCat, String categoryid);
// }

// class HomeControllerImp extends HomeController {
//   MyServices myServices = Get.find();

//   String? username;
//   String? id;
//   String? lang;
//   String titlehomecard = "";
//   String bodyhomecard = "";
//   String deliveryTime = "";

//   HomeData homedata = HomeData(Get.find());

//   // List data = [];
//   List categories = [];
//   List items = [];
//   List settingsdata = [];
//   // List items = [];

//   @override
//   initialData() {
//     // myServices.sharedPreferences.clear() ;
//     lang = myServices.sharedPreferences.getString("lang");
//     username = myServices.sharedPreferences.getString("username");
//     id = myServices.sharedPreferences.getString("id");
//   }

//   @override
//   void onInit() {
//     search = TextEditingController();
//     getdata();
//     initialData();
//     super.onInit();
//   }

//   @override
//   getdata() async {
//     statusRequest = StatusRequest.loading;
//     var response = await homedata.getData();
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         categories.addAll(response['categories']['data']);
//         items.addAll(response['items']['data']);
//         settingsdata.addAll(response['settings']['data']);
//         titlehomecard = settingsdata[0]['settings_titlehome'];
//         bodyhomecard = settingsdata[0]['settings_bodyhome'];
//         deliveryTime = settingsdata[0]['settings_deliverytime'];
//         myServices.sharedPreferences.setString("deliverytime", deliveryTime);
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   @override
//   goToItems(categories, selectedCat, categoryid) {
//     Get.toNamed(AppRoute.items, arguments: {
//       "categories": categories,
//       "selectedcat": selectedCat,
//       "catid": categoryid
//     });
//   }

//   goToPageProductDetails(itemsModel) {
//     Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
//   }
// }

// class SearchMixController extends GetxController {
//   List<ItemsModel> listdata = [];

//   late StatusRequest statusRequest;
//   HomeData homedata = HomeData(Get.find());

//   searchData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await homedata.searchData(search!.text);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         listdata.clear();
//         List responsedata = response['data'];
//         listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   bool isSearch = false;
//   TextEditingController? search;
//   checkSearch(val) {
//     if (val == "") {
//       statusRequest = StatusRequest.none;
//       isSearch = false;
//     }
//     update();
//   }

//   onSearchItems() {
//     isSearch = true;
//     searchData();
//     update();
//   }
// }
















// ignore_for_file: avoid_print

import 'package:flutter_firstapplication/core/class/statusrequest.dart';
import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
import 'package:flutter_firstapplication/core/services/services.dart';
import 'package:flutter_firstapplication/date/datesource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class  HomeController extends GetxController {
 initialData()  ;
 getdata() ;  

}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  String? id;

 HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  // List items = [];

  late StatusRequest statusRequest;

  @override
  initialData() {

    username = myServices.sharedPreferences.getString("username") ; 
    id = myServices.sharedPreferences.getString("id") ; 
  }

  @override
  void onInit() {
    getdata() ; 
    initialData();
    super.onInit();
  }
  
  @override
  getdata() async {
        statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
  }
}