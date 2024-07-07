import 'package:flutter/material.dart';
import 'package:hackathon/productslist.dart';

class AddCart extends StatefulWidget {
  const AddCart({super.key});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 250,
              child: Image(image: AssetImage('image/Login.png')),
            )
          ],
        ),
        actions: [Icon(Icons.search)],
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading:Image.asset(productscart[index].image!),
            title:Text( productscart[index].title!),
            trailing: Text(productscart[index].price!),
          )
          ;
        },
        itemCount: productscart.length,
      ),
    );
  }
}
