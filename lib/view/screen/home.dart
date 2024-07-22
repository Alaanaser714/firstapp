// ignore_for_file: use_super_parameters, unused_local_variable, unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_firstapplication/controller/home_controller.dart';
import 'package:flutter_firstapplication/core/class/handledataview.dart';
import 'package:flutter_firstapplication/core/constant/routes.dart';
import 'package:flutter_firstapplication/date/model/itemsmodel.dart';
import 'package:flutter_firstapplication/linkApi.dart';
import 'package:flutter_firstapplication/view/widget/customappbar.dart';
import 'package:flutter_firstapplication/view/widget/home/customcardhome.dart';
import 'package:flutter_firstapplication/view/widget/home/customtitlehome.dart';
import 'package:flutter_firstapplication/view/widget/home/listcategorieshome.dart';
import 'package:flutter_firstapplication/view/widget/home/listitemshome.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp cotroller = Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: !controller.isSearch
                        ?  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            
                              CustomCardHome(
                                  title: "${controller.titlehomecard}",
                                  body: "${controller.bodyhomecard}"),
                              const CustomTitleHome(title: "Categories"),
                              const ListCategoriesHome(),
                              const CustomTitleHome(title: "Top Selling"),
                              const ListItemsHome(),
                            ],
                          )
                        : ListItemsSearch(listdatamodel: controller.listdata))
              ],
            )));
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  final List<ItemsModel> listdatamodel;
  const ListItemsSearch({Key? key, required this.listdatamodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listdatamodel.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.goToPageProductDetails(listdatamodel[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Card(
                  child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                        child: CachedNetworkImage(
                            imageUrl:
                                "${AppLink.imagestItems}/${listdatamodel[index].itemsImage}")),
                    Expanded(
                        flex: 2,
                        child: ListTile(
                          title: Text(listdatamodel[index].itemsName!),
                          subtitle: Text(listdatamodel[index].categoriesName!),
                        )),
                  ],
                ),
              )),
            ),
          );
        });
  }
}
