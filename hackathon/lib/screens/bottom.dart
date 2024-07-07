import 'package:flutter/material.dart';
import 'package:hackathon/productslist.dart';
import 'package:hackathon/screens/addcart.dart';
import 'package:hackathon/screens/products.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    Widget currentScreen = Products();
    int activeTab = 0;
    return 
SafeArea(
      child: Scaffold(
        
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
        drawer: Drawer(
          child: Column(children: [
            SizedBox(height: 10,),
            SizedBox(
                width: 250,
                child: Image(image: AssetImage('image/Login.png')),
              ),
            SizedBox(height: 20,),
            ListTile(title: Text('Setting',)),
            SizedBox(height: 10,),
            ListTile(title: Text('Profile'),),
            SizedBox(height: 10,),
            ListTile(title: Text('About'),)
          ],),
        ),
        body: currentScreen,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white38,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 0;
      
                    currentScreen = const Products();
                  });
                },
                child: Icon(
                  Icons.home,
                  color: activeTab == 0 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 1;
                      currentScreen = const Products();
                    });
                  },
                  child: Icon(Icons.favorite,
                      color: activeTab == 1 ? Colors.white : Colors.black)),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> AddCart()));
                  setState(() {
                    
                  });
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: activeTab == 2 ? Colors.white : Colors.black,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activeTab = 3;
                    currentScreen = const Products();
                  });
                },
                child: Icon(
                  Icons.person_outline,
                  color: activeTab == 3 ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
