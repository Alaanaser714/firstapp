// ignore_for_file: use_super_parameters, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/orders/archive_controller.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/date/model/orders_model.dart';
import 'package:flutter_firstapplication/view/widget/orders/dialograting.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersListArchive extends GetView<OrdersArchiveController> {
  final OrdersModel listdata;

  const CardOrdersListArchive({Key? key, required this.listdata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Order Number : #${listdata.ordersId}",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  // Text(listdata.ordersDatetime!)
                  Text(
                    "${Jiffy.parse(listdata.ordersDatetime!).fromNow()}",
                    style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Divider(),
              Text(
                  "Order Type : ${controller.printOrderType(listdata.ordersType!)}"),
              Text("Order Price : ${listdata.ordersPrice} \$"),
              Text("Delivery Price : ${listdata.ordersPricedelivery} \$ "),
              Text(
                  "Payment Method : ${controller.printPaymentMethod(listdata.ordersPaymentmethod!)} "),
              Text(
                  "Order Status : ${controller.printOrderStatus(listdata.ordersStatus!)} "),
              const Divider(),
              Row(
                children: [
                  Text("Total Price : ${listdata.ordersId} \$ ",
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.ordersdetails,
                          arguments: {"ordersmodel": listdata});
                    },
                    color: AppColor.thirdColor,
                    textColor: AppColor.secondColor,
                    child: const Text("Details"),
                  ),
              if(listdata.ordersRating=="0")    MaterialButton(
                    onPressed: () {
                      showDialogRating(context,listdata.ordersId!);
                    },
                    color: AppColor.thirdColor,
                    textColor: AppColor.secondColor,
                    child: const Text("Rating"),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
