import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cartview extends StatefulWidget {
  List items = [];
  Cartview({super.key, required this.items});

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey,
            title: Text('${widget.items[index]}'),
            trailing: IconButton(
              onPressed: () {
                widget.items.removeAt(index);
                setState(() {});
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}
