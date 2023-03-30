import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/Controllers/register_controller.dart';
import 'package:social_android/UI/Widget/button_auth_widget.dart';
import 'package:social_android/UI/Widget/inkwell_to_screen.dart';
import 'package:social_android/UI/Widget/textfield_widget.dart';
import 'package:social_android/UI/system_color.dart';
import 'package:social_android/UI/tabbar.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({super.key});
  @override
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllcolorApp.backgroundColorApp,
      body: ListView(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Text(
                'C K C S',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(7, 7),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 91, 91, 91),
                    ),
                    Shadow(
                      offset: Offset(5, 5),
                      blurRadius: 8.0,
                      color: Color.fromARGB(124, 56, 56, 255),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'ĐĂNG KÝ',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  textformfieldEmailWidget(
                    hintext: "Nhập email",
                    icon: Icons.email,
                    textInputType: TextInputType.emailAddress,
                  ),
                  Obx(
                    () => textformfieldPasswordWidget(
                      obscureText: controller.isPasswordHidden.value,
                      hintext: "Nhập mật khẩu",
                      icon: Icons.lock,
                      textInputType: TextInputType.text,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isPasswordHidden.value =
                              !controller.isPasswordHidden.value;
                        },
                        child: Icon(controller.isPasswordHidden.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                  Obx(
                    () => textformfieldPasswordWidget(
                      obscureText: controller.isPasswordConfirmHidden.value,
                      hintext: "Xác nhận mật khẩu",
                      icon: Icons.lock,
                      textInputType: TextInputType.text,
                      suffixIcon: InkWell(
                        onTap: () {
                          controller.isPasswordConfirmHidden.value =
                              !controller.isPasswordConfirmHidden.value;
                        },
                        child: Icon(controller.isPasswordConfirmHidden.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                  buttonAuth(
                    text: "ĐĂNG KÝ",
                    onpress: () {
                      Get.to(Tabbar());
                    },
                  ),
                ],
              ),
            ),
          ),
          inkwelltoscreen(
            text1: "Đăng nhập",
            text2: " nếu bạn đã có tài khoản?",
            ontap: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
