import 'package:flutter/material.dart';
import 'package:image_generatoe_api/screen2.dart';
import 'package:image_generatoe_api/utils.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Custom Image Generator",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white,
                      fontSize: 47,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              child: Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  gradient: LinearGradient(
                    colors: [
                      purple,
                      yellow,
                    ],
                  ),
                ),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: white, fontSize: 24, fontWeight: FontWeight.w600),
                ),),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen(),
                  ),
                );
              },
            )
          ],
        ));
  }
}
