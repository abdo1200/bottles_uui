import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Account Created",
                    style: TextStyle(
                      fontSize: 20,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(imagePath + "three.jpg"),
            Text(
              "Hello there,\n\n complete your profile to get\n a personlized feeds",
              style: TextStyle(
                fontSize: 20,
                color: mainColor,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            InkWell(
              onTap: () {},
              child: Container(
                width: width(context) * .8,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Complete Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            Text(
              "Skip",
              style: TextStyle(
                  fontSize: 15,
                  color: mainColor,
                  decoration: TextDecoration.underline,
                  decorationColor: mainColor
                  // fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
