
// // ignore_for_file: avoid_print

// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/orders/notifacation_data.dart';
// import 'package:get/get.dart';

// class NotificationController extends GetxController {
//   NotificationData notificationData = NotificationData(Get.find());

//   List data = [];

//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();

//   getData() async {
//     statusRequest = StatusRequest.loading;
//     var response = await notificationData
//         .getData(myServices.sharedPreferences.getString("id")!);

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
//   void onInit() {
//     getData();
//     super.onInit();
//   }
// }