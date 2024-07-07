import 'package:flutter/material.dart';
import 'package:shop_app/services/vendor_list.dart';

class Appservices {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNamecController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var category;
  addVendorInfo() {
    vendorlist.add(VendorInfo(
        firstName: firstNameController.text,
        lastName: lastNamecController.text,
        phoneNumber: phoneNumberController.text,
        userName: userNameController.text,
        password: passwordController.text,
        ));
    
   
  }
}
