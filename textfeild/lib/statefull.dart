import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int count = 0;
  addvalue() {
    count++;
    print(count);
  }

  
  minsvalue() {
    count--;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '${count}',
              style: TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                minsvalue();
                setState(() {});
              },
              child: Icon(Icons.remove)),
          // Container(
          //   child: Text(
          //     '$minus',
          //     style: TextStyle(fontSize: 40),
          //   ),
          // )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          addvalue();
          setState(() {});
        },
      ),
    );
  }
}
