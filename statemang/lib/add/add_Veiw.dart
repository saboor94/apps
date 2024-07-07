import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemang/components/text_components.dart';
import 'package:statemang/controllers/home/home_controller.dart';

class AddView extends StatelessWidget {
  AddView({super.key});
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextComponent(
            textcomponentValue: "${homeControl.counterValue} ${Get.arguments}",
          ),
          ElevatedButton(
              onPressed: () {
                Get.back(result: "I am Back");
              },
              child: Text("back from this"))
        ],
      )),
    );
  }

 
}
