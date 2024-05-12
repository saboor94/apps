import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practice/appservices.dart';

class GridVeiw1 extends StatefulWidget {
  const GridVeiw1({super.key});

  @override
  State<GridVeiw1> createState() => _GridVeiw1State();
}

class _GridVeiw1State extends State<GridVeiw1> {
  @override
  Widget build(BuildContext context) {
    Services1 ser = Services1();
     
    return Scaffold(
      body: FutureBuilder(
          
          future: ser.getData(),
          builder: (context, AsyncSnapshot snapshot) {
            
            if (snapshot.hasError) {
              return Text('wait');
            }
            return Container(
              height: 200,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0),
                itemBuilder: (context, index) {
                    
                  return Card(
                    color: Colors.amberAccent,
                    child: Text(snapshot.data!.docs[index]['email']),
                  );
                },
                
                itemCount:snapshot.data.docs.length
              ),
            );
          }),
    );
  }
}
