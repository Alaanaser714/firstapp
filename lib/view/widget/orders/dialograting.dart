

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/orders/archive_controller.dart';
import 'package:flutter_firstapplication/core/constant/color.dart';
import 'package:flutter_firstapplication/core/constant/imagesassets.dart';
import 'package:get/get.dart';
import 'package:rating_dialog/rating_dialog.dart';

void showDialogRating(BuildContext context, String ordersid) {
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => RatingDialog(
      initialRating: 1.0,
      title: const Text(
        'Rating Dialog',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      message: const Text(
        'Tap a star to set your rating. Add more description here if you want.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
      image: Image.asset(
        AppImageAsset.logo,
        width: 200,
        height: 200,
      ),
      submitButtonText: 'Submit',
      submitButtonTextStyle: const TextStyle(
          fontWeight: FontWeight.bold, color: AppColor.primaryColor),
      commentHint: 'Set your custom comment hint',
      onCancelled: () => print('cancelled'),
      onSubmitted: (response) {
        OrdersArchiveController controller = Get.find();
        controller.submitRating(ordersid, response.rating, response.comment);
      },
    ),
  );
}
