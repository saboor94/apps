class VendorInfo {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? userName;
  String? password;
  String? category;
  VendorInfo({firstName, lastName, phoneNumber, userName, password, category}) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.phoneNumber = phoneNumber;
    this.userName = userName;
    this.password = password;
    this.category = category;
  }
}

List<VendorInfo> vendorlist = [];
