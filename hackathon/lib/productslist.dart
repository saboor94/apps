class Productslist {
  String? title;
  String? price;
  String? image;
  Productslist(title, price, image) {
    this.title = title;
    this.price = price;
    this.image = image;
  }
}

List products = [
  Productslist('Peperomia', '400\$', 'image/card1.jpg'),
  Productslist('Watermelon', '350\$', 'image/card2.jpg'),
  Productslist('Corton Petra', '200\$', 'image/card3.jpg'),
  Productslist('Bird\'s Nest Fern', '160\$', 'image/card4.jpg'),
  Productslist('Cactus', '260\$', 'image/card5.jpg')
];
List<Productslist> productscart = [];
