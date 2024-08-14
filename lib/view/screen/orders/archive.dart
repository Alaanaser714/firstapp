
// // ignore_for_file: use_super_parameters

// import 'package:flutter/material.dart';
// import 'package:flutter_firstapplication/controller/orders/archive_controller.dart';
// import 'package:flutter_firstapplication/core/class/handledataview.dart';
// import 'package:flutter_firstapplication/view/widget/orders/orderslitcardarchive.dart';
// import 'package:get/get.dart'; 

// class OrdersArchiveView extends StatelessWidget {
//   const OrdersArchiveView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     Get.put(OrdersArchiveController());
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Orders'),
//         ),
//         body: Container(
//           padding:const  EdgeInsets.all(10),
//           child: GetBuilder<OrdersArchiveController>(
//               builder: ((controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
//                     itemCount: controller.data.length,
//                     itemBuilder: ((context, index) =>
//                         CardOrdersListArchive(listdata: controller.data[index])),
//                   )))),
//         ));
//   }
// }