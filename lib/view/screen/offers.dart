// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/favorite_controller.dart';
import 'package:flutter_firstapplication/controller/offers_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/view/screen/home.dart';
import 'package:flutter_firstapplication/view/widget/customappbar.dart';
import 'package:flutter_firstapplication/view/widget/offers/customlistitemsoffers.dart';
import 'package:get/get.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    OffersController controller = Get.put(OffersController());
    FavoriteController controllerFav = Get.put(FavoriteController());

    return GetBuilder<OffersController>(
        builder: (controller) => Scaffold(
          body: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                      mycontroller: controller.search!,
                      titleappbar: "Find Product",
                      // onPressedIcon: () {},
                      onPressedSearch: () {
                        controller.onSearchItems();
                      },
                      onChanged: (val) {
                        controller.checkSearch(val);
                      },
                      onPressedIconFavorite: () {
                        Get.toNamed(AppRoute.myfavroite);
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    !controller.isSearch
                        ? HandlingDataView(
                            statusRequest: controller.statusRequest,
                            widget: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.data.length,
                                itemBuilder: (context, index) =>
                                    CustomListItemsOffers(
                                        itemsModel: controller.data[index])))
                        : ListItemsSearch(listdatamodel: controller.listdata)
                  ],
                ),
              ),
        ));
  }
}
