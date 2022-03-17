import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _timoutFunction();
  }

  _timoutFunction() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 132, 112, 199),
              Color.fromARGB(255, 140, 106, 250),
            ],
          )),
          child: const Center(
            child: Text(
              'Travo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
    );
  }
}
