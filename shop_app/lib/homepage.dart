import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shop_app/components/my_text_field.dart';
import 'package:shop_app/services/ap_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initerstitialAd();
  }

  late InterstitialAd interstitialAd;
  bool isAdLoad = false;

  initerstitialAd() {
    InterstitialAd.load(
        adUnitId: "ca-app-pub-3940256099942544/1033173712",
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {
            isAdLoad = true;
            interstitialAd.show();
          });
        }, onAdFailedToLoad: ((error) {
          interstitialAd.dispose();
        })));
  }

  String? value;
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    final services = Appservices();

    final items = ['item 1', 'item 2', 'item 3', 'item 4', 'item 5'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('First name'),
              MyTextField(
                  enabled: true,
                  controller: services.firstNameController,
                  hintText: 'First name',
                  obscureText: false),
              const Text('Last name'),
              MyTextField(
                  enabled: true,
                  controller: services.lastNamecController,
                  hintText: 'Last name',
                  obscureText: false),
              const Text('Phone number'),
              MyTextField(
                  enabled: true,
                  controller: services.phoneNumberController,
                  hintText: '+921234567890',
                  obscureText: false),
              Row(
                children: [
                  Checkbox(
                      value: ischecked,
                      activeColor: Colors.green,
                      onChanged: (newbool) {
                        setState(() {
                          ischecked = newbool!;
                          services.phoneNumberController =
                              services.userNameController;
                        });
                      }),
                  const Text('Use phonenumber as username')
                ],
              ),
              const Text('Username'),
              MyTextField(
                  enabled: !ischecked,
                  controller: services.userNameController,
                  hintText: 'Username',
                  obscureText: false),
              const Text('Password'),
              MyTextField(
                  enabled: true,
                  controller: services.passwordController,
                  hintText: '*********',
                  obscureText: true),
              Row(
                children: [
                  const Text('select category'),
                  const SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                      hint: const Text('select category'),
                      value: value,
                      items: items.map(buildMenuItem).toList(),
                      onChanged: (value) => setState(() {
                            this.value = value;
                            value = services.category;
                          })),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    services.addVendorInfo();
                  },
                  child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item),
      );
}
