import 'package:flutter/material.dart';
import 'package:my_apps/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: viewmodel.counterservice.prodcuts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            viewmodel.counterservice.prodcuts[index]['name']!),
                        subtitle: Text(
                            viewmodel.counterservice.prodcuts[index]['price']!),
                        trailing: IconButton(
                          onPressed: () {
                            viewmodel.addprodcut(
                                viewmodel.counterservice.prodcuts[index]);
                          },
                          icon: Icon(Icons.add),
                        ),
                      );
                    }),
                ElevatedButton(
                    onPressed: () {
                      viewmodel.navigateAbout();
                    },
                    child: Text('to cart'))
              ],
            ),
          );
        });
  }
}
