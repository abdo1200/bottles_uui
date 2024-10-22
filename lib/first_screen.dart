import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/constants.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter_ui/second_screen.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width(context),
        height: height(context),
        child: Stack(
          children: [
            // Positioned.fill(child: Container(color: Colors.white,)),
            SizedBox(
              width: width(context),
              height: height(context) * .6,
              child: Image.asset(
                imagePath + "blur.png",
                width: width(context),
                height: height(context) * .6,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
                width: width(context),
                height: height(context) * .8,
                child: Transform.rotate(
                    angle: -.4, child: Image.asset(imagePath + "bottle.png"))),
            Positioned(
              top: height(context) * .54,
              child: Container(
                alignment: Alignment.center,
                width: width(context),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: ClipPath(
                    clipper: OutSideCustomShapeClipper(),
                    child: Container(
                      width: width(context) * .5,
                      height: height(context)*.06,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width(context),
                height: height(context) * .4,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Maintain Daily Habbit",
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 4, 72, 128),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        textAlign: TextAlign.center,
                        "A Habbit tracker is a simple way to messure when you did a habbit, the most basic format is to get calender",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 139, 138, 138),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(),
                            ));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: BlurredImage(
                              blur: 2,
                              image: Image.asset(
                                imagePath + "blur.png",
                                fit: BoxFit.cover,
                                width: 200,
                                height: 60,
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Colors.white.withOpacity(.5),
                              ),
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.lato(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OutSideCustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double loc = 10;
    double s = 10;
    final path = Path()
      ..cubicTo(
        0,
        0,
        (size.width * .10),
        size.height * .02,
        (size.width * .25),
        size.height * .4,
      )
      ..cubicTo(
        (size.width * .25),
        size.height * .4,
        (size.width * .5),
        size.height,
        (size.width * .75),
        size.height * .4,
      )
      ..cubicTo(
        (size.width * .75),
        size.height * .4,
        (size.width * .85),
        size.height * .02,
        (size.width),
        0,
      )
      ..close(); // Complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
