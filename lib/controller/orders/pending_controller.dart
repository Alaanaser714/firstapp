
// // ignore_for_file: avoid_print

// import 'package:flutter_firstapplication/core/class/statusrequest.dart';
// import 'package:flutter_firstapplication/core/constant/routes.dart';
// import 'package:flutter_firstapplication/core/funcations/handlingdata_controller.dart';
// import 'package:flutter_firstapplication/core/services/services.dart';
// import 'package:flutter_firstapplication/date/datesource/remote/orders/pending_data.dart';
// import 'package:flutter_firstapplication/date/model/orders_model.dart';
// import 'package:get/get.dart';

// class OrdersPendingController extends GetxController {
  
//   OrdersPendingData ordersPendingData = OrdersPendingData(Get.find());

//   List<OrdersModel> data = [];

//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();


//   goToPageTracking (OrdersModel ordersmodel){
//     Get.toNamed(AppRoute.orderstracking, arguments: {"ordersmodel": ordersmodel});                    
//   }

//   String printOrderType(String val) {
//     if (val == "0") {
//       return "delivery";
//     } else {
//       return "Recive";
//     }
//   }

//   String printPaymentMethod(String val) {
//     if (val == "0") {
//       return "Cash On Delivery";
//     } else {
//       return "Payment Card";
//     }
//   }

//   String printOrderStatus(String val) {
//     if (val == "0") {
//       return "Pending Approval";
//     } else if (val == "1") {
//       return "The Order is being Prepared ";
//     } else if (val == "2") {
//       return "Ready To Picked up by Delivery man";
//     }  else if (val == "3") {
//       return "On The Way";
//     } else {
//       return "Archive";
//     }
//   }
//   getOrders() async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     update();
//     var response = await ordersPendingData
//         .getData(myServices.sharedPreferences.getString("id")!);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//   deleteOrder(String orderid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     update();
//     var response = await ordersPendingData.deleteData(orderid);
//     print("=============================== Controller $response ");
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         refrehOrder();
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//   refrehOrder() {
//     getOrders();
//   }

//   @override
//   void onInit() {
//     getOrders();
//     super.onInit();
//   }
// }