import 'package:flutter/material.dart';

class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
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
                  Center(child: Text('$index')),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.shopping_cart))
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: 6),
    );
  }
}
