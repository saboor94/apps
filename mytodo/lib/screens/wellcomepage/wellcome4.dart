import 'package:flutter/material.dart';
import 'package:mytodo/screens/LoginAndREG/login.dart';
import 'package:mytodo/screens/LoginAndREG/signIn.dart';

class Wellcom4 extends StatelessWidget {
  const Wellcom4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text('Welcome to UpTodo', style: TextStyle(fontSize: 40)),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Please login to your account or create',
                style: TextStyle(fontSize: 15),
              ),
              const Text('new account to continue',
                  style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 350,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        backgroundColor:
                            const Color.fromARGB(218, 145, 83, 199)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        side: const BorderSide(
                            color: Color.fromARGB(218, 145, 83, 199))),
                    onPressed: () {
                       Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                    },
                    child: const Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ],
          ),
        ));
  }
}
