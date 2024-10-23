import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
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
            child: Stack(children: [
              SizedBox(
                width: width(context),
                height: height(context) * .6,
                child: Image.asset(
                  imagePath + "blur.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: width(context),
                height: height(context) * .8,
                child: Transform.rotate(
                  angle: -.3,
                  child: Image.asset(
                    imagePath + "bottle.png",
                  ),
                ),
              ),
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
                          height: height(context) * .06,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
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
                              fontSize: 25,
                              color: Color.fromARGB(225, 4, 72, 128),
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "A habbit tracker is simple way to messure when you did a habbit, the most basic format is to get a calender",
                            style: GoogleFonts.lato(
                                fontSize: 15,
                                color: Color.fromARGB(225, 139, 138, 138)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondScreen(),
                                ));
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: BlurredImage(
                                  image: Image.asset(imagePath + "blur.png",
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 200),
                                ),
                              ),
                              Container(
                                  height: 60,
                                  width: 200,
                                  alignment: Alignment.center,
                                  child: Text("Get Started",
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ])));
  }
}

class OutSideCustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..cubicTo(0, 0, size.width * .1, size.height * .02, size.width * .25,
          size.height * .4)
      ..cubicTo(size.width * .25, size.height * .4, size.width * .5,
          size.height, size.width * .75, size.height * .4)
      ..cubicTo(size.width * .75, size.height * .4, size.width * .85,
          size.height * .02, size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
