import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/Controllers/home_controller.dart';
import 'package:social_android/UI/Home/create_post_screen.dart';
import 'package:social_android/UI/Info/infomation_screen.dart';

import 'package:social_android/UI/Widget/post_widget.dart';
import 'package:social_android/UI/system_color.dart';
import 'package:social_android/UI/Widget/avatar_widget.dart';

class Home extends GetView<HomeController> {
  final HomeController homeController = Get.find();

  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AllcolorApp.backgroundColorContainer,
      child: ListView(
        children: [
          Container(
            height: 50,
            color: AllcolorApp.backgroundColorApp,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(Infomation());
                      },
                      child: avatar()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(CreatePost());
                      },
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AllcolorApp.backgroundColorContainer),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '     Bạn đang nghĩ gì?',
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          // post
          SizedBox(height: double.maxFinite, child: PostWidget()),
        ],
      ),
    );
  }
}
