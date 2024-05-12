import 'package:flutter/material.dart';
import 'package:newproject/cartveiw.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    List prodcuts = [
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
    ];
    List caritems = [];
    // ignore: unused_local_variable
    List favitem = [];
    addtocart(item) {
      caritems.add(item);
      setState(() {});
    }

    gotocartscreen() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Cartview(items: caritems)));
    }

    gotofavscren() {}

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                gotocartscreen();
                setState(() {
                  
                });
              },
              icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.amber,
              elevation: 3,
              child: Column(
                children: [
                  Center(child: Text('${prodcuts[index]}')),
                  SizedBox(
                    height: 170.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      IconButton(
                          onPressed: () {
                            addtocart(prodcuts[index]);
                          },
                          icon: Icon(Icons.shopping_cart))
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: prodcuts.length),
    );
  }
}
