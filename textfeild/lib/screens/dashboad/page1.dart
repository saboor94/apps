import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('page 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red),),
    );
  }
}
