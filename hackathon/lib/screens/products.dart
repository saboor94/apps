import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/productslist.dart';
import 'package:hackathon/screens/servies/store.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    Services1 ser = Services1();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth, image: AssetImage('image/bb.jpg'))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('image/serch.jpg'))),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  child:  IconButton(
                    alignment: Alignment.topRight,
                    onPressed: () {
                      productscart.add(Productslist(products[index].title,
                          products[index].price, products[index].image));
                    },
                    icon: const Icon(Icons.add),
                  ),
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(products[index].image))),
                );
              },
              itemCount: products.length,
            ),
          )
        ],
      ),
    );
  }
}
