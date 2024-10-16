import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/onboard/complete_screen.dart';
import 'package:otp_text_field_v2/otp_field_style_v2.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                    "Verfication Screen",
                    style: TextStyle(
                      fontSize: 20,
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(imagePath + "two.jpg"),
            Text(
              "Enter the 5 digit number sent to\nthis number : 022308489489",
              style: TextStyle(
                fontSize: 20,
                color: mainColor,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: mainColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(30)),
              child: OTPTextFieldV2(
                controller: OtpFieldControllerV2(),
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.center,
                fieldWidth: 45,
                fieldStyle: FieldStyle.underline,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                spaceBetween: 10,
                otpFieldStyle: OtpFieldStyle(
                    borderColor: mainColor, enabledBorderColor: mainColor),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
            Text(
              "Resend Code",
              style: TextStyle(
                  fontSize: 15,
                  color: mainColor,
                  decoration: TextDecoration.underline,
                  decorationColor: mainColor
                  // fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompleteScreen(),
                    ));
              },
              child: Container(
                width: width(context) * .8,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Verify",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
