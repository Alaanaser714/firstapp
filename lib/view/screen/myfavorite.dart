
// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/myfavorite_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/view/widget/myfavorite/customlistfavorite.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    Get.put(MyFavoriteController());
    
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<MyFavoriteController>(
            builder: ((controller) => ListView(children: [
                  // CustomAppBar(
                  //   titleappbar: "Find Product", 
                  //   onPressedSearch: () {},
                  //   onPressedIconFavorite: () {
                  //     Get.toNamed(AppRoute.myfavroite);
                  //   },
                  // ),
                  const SizedBox(height: 20) ,
                  HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (context, index) {
                          return  CustomListFavoriteItems(itemsModel: controller.data[index]) ; 
                        },
                      ))
                ]))),
      ),
    );
  }
}