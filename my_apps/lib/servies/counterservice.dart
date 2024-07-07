class CounterService {
  var counter = 0;
  var prodcuts = [
    {'name': 'samsung', 'price': '124466'},
    {'name': 'motorolla', 'price': '124466'},
    {'name': 'Apple', 'price': '124466'},
    {'name': 'Realme', 'price': '124466'},
  ];

 var addcart = [];
  addproductstoCarts(toaddprodcut) {
    addcart.add(toaddprodcut);
  }

  deleteprodcuts(remove) {
    addcart.remove(remove);
    
  }

  updateconter() {
    counter++;
  }

  subconter() {
    counter--;
  }
}
