import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/onboard/otp_screen.dart';
import 'package:otp_text_field_v2/otp_field_style_v2.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: width(context),
              height: 70,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    top: -40,
                    right: 20,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: mainColor.withOpacity(.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(imagePath + "one.jpg"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    fillColor: mainColor.withOpacity(.2),
                    filled: true,
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: mainColor),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpScreen(),
                    ));
              },
              child: Container(
                width: width(context) * .8,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Or login with",
              style: TextStyle(
                fontSize: 13,
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath + "facebook.png",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Image.asset(
                  imagePath + "gmail.png",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Image.asset(
                  imagePath + "twiter.png",
                  width: 50,
                  height: 50,
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Don't have account? sign up",
              style: TextStyle(
                fontSize: 13,
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            SizedBox(
              width: width(context),
              height: 70,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                    bottom: -40,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: mainColor.withOpacity(.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}


// "No ads while \nlistening music"
// "Listening to music is very comfertable without any annoying adds"
