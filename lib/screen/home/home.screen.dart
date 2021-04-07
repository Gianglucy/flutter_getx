import 'package:base_getx/@share/utils/util.dart';
import 'package:base_getx/@share/widget/scaffold.widget.dart';
import 'package:base_getx/screen/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:base_getx/@share/constants/language.constant.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: "Home",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(getArgument()),
            // Obx(() => Text(controller.userName.value))
            InkWell(
              onTap: () {
                Get.log("abc");
                controller.number++;
              },
              child: Container(
                color: Colors.greenAccent,
                padding: EdgeInsets.all(8),
                child: Text("clickMe"),
              ),
            ),
            Obx(() => Text("${controller.number.value}")),
          ],
        ),
      ),
    );
  }
}
