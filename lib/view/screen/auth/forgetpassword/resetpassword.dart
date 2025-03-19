import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_project/controller/auth/resetpassword_controller.dart';
import 'package:maps_project/core/constant/color.dart';
import 'package:maps_project/core/function/validinput.dart';
import 'package:maps_project/view/widget/auth/custombuttonauth.dart';
import 'package:maps_project/view/widget/auth/customtextbodyauth.dart';
import 'package:maps_project/view/widget/auth/customtextforomauth.dart';
import 'package:maps_project/view/widget/auth/customtexttitelauth.dart'; 

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "35".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "35".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              isNumber: false ,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),
            CustomTextFormAuth(
              isNumber: false ,

              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "Re" + " " + "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "33".tr,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}