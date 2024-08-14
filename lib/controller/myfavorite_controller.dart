
// // ignore_for_file: unused_local_variable, avoid_print

// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/myfavorite_data.dart';
// import 'package:flutter_firstapplication/date/model/myfavorite.dart';
// import 'package:get/get.dart';

// class MyFavoriteController extends GetxController {
//   MyFavoriteData favoriteData = MyFavoriteData(Get.find());

//   List<MyFavoriteModel> data = [];

//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();

// //  key => id items
// //  Value => 1 OR 0

//   getData() async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await favoriteData
//         .getData(myServices.sharedPreferences.getString("id")!);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List responsedata = response['data'];
//         data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
//         print("data");
//         print(data);
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//   deleteFromFavorite(String favroiteid) {
//     // data.clear();
//     // statusRequest = StatusRequest.loading;
//     var response = favoriteData.deleteData(favroiteid);
//     data.removeWhere((element) => element.favoriteId == favroiteid);
//     update();
//   }

//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }