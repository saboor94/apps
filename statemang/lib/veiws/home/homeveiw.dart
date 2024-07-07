import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:statemang/add/add_Veiw.dart';
import 'package:statemang/components/text_components.dart';
import 'package:statemang/controllers/home/home_controller.dart';
import 'package:statemang/controllers/home/home_controller.dart';
import 'package:statemang/controllers/home/home_controller.dart';
import 'package:statemang/controllers/home/home_controller.dart';

class HomeVeiw extends StatelessWidget {
  HomeVeiw({super.key});

  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print('Calling again');
    return Scaffold(
        body: GetBuilder<HomeController>(builder: (cahomeControlca) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: TextComponent(
                        textcomponentValue: "${cahomeControlca.counterValue}"))

                // GetX<HomeController>(builder: (cahomeControlca) {
                //   return Center(
                //       child: TextComponent(
                //    textComponentValue: "${cahomeControlca.counterValue.value}",
                //   ));
                // }),
                // Obx(() => Center(
                //         child: TextComponent(
                //       textComponentValue:"${homeControl.counterValue.value}",
                //     ))),
                ,
                TextField(
                  controller: homeControl.add,
                ),
                ElevatedButton(
                    onPressed: () {
                      homeControl.addamount();

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => AddView()));
                      // Get.off(() => AddView());
                      // Get.offAll(() => AddView());
                      // var abc = await Get.to(() => AddView(),
                      //     arguments: "Shahzeb naqvi");
                      // print(abc);
                      // Get.offUntil( AddView());
                    },
                    child: Text("add")),
                ElevatedButton(
                    onPressed: () {
                      homeControl.dethamount();
                    },
                    child: Text('sub')),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeControl.history.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(homeControl.history[index]),
                      );
                    }),
              ],
            ),
          );
        }),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FloatingActionButton(
              onPressed: () {
                homeControl.subValue();
              },
              child: Text(
                '-',
                style: TextStyle(fontSize: 35),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                homeControl.addVAlue();
              },
              child: Icon(Icons.add),
            ),
          ]),
        ));
  }
}
