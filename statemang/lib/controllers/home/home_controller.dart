import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var counterValue = 0;
  TextEditingController add = TextEditingController();

  addVAlue() {
    counterValue++;
    update();
    print(counterValue);
  }

  subValue() {
    counterValue--;
    update();
    print(counterValue);
  }

  addamount() {
    counterValue = counterValue + int.parse(add.text);

    Get.snackbar('Amount Status', "Amount Added");
    history.add('Amount added ${int.parse(add.text)}');
    update();
  }

  dethamount() {
    if (counterValue < int.parse(add.text)) {
      Get.snackbar('Amount Status', "itna paisa nai hai");
    } else if (counterValue - int.parse(add.text) < 0) {
      Get.snackbar('Amount Status', "itna paisa nai hai");
    } else if (counterValue - int.parse(add.text) > 0) {
      Get.snackbar('Amount Status', "done");
      history.add('Amount deth ${int.parse(add.text)}');
    }

    
    update();
  }

  List history = [];
}
