
// // ignore_for_file: use_super_parameters

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/orders/pending_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/view/widget/orders/orderslistcard.dart';
// import 'package:get/get.dart'; 

// class OrdersPending extends StatelessWidget {
//   const OrdersPending({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Get.put(OrdersPendingController());
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Orders'),
//         ),
//         body: Container(
//           padding:const  EdgeInsets.all(10),
//           child: GetBuilder<OrdersPendingController>(
//               builder: ((controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
//                     itemCount: controller.data.length,
//                     itemBuilder: ((context, index) =>
//                         CardOrdersList(listdata: controller.data[index])),
//                   )))),
//         ));
//   }
// }