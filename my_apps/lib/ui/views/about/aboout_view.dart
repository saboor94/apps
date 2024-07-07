import 'package:flutter/material.dart';
import 'package:my_apps/ui/views/about/about_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Aboutview extends StatelessWidget {
  const Aboutview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AboutViewmodel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: ListView.builder(
                itemCount: viewmodel.counterService.addcart.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title:
                        Text(viewmodel.counterService.addcart[index]['name']),
                    subtitle:
                        Text(viewmodel.counterService.addcart[index]['price']),
                    trailing: ElevatedButton(
                        onPressed: () {
                          viewmodel.addcarttoremove(
                              viewmodel.counterService.addcart[index]);
                        },
                        child: Text('delete')),
                  );
                }),
          );
        });
  }
}
