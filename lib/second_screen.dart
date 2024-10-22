import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:gauge_chart/gauge_chart.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: width(context),
        height: height(context),
        child: Stack(
          children: [
            Container(
              width: width(context),
              height: height(context),
              child: Image.asset(
                imagePath + "blur.png",
                width: width(context),
                height: height(context),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                alignment: Alignment.center,
                width: width(context),
                child: ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    width: width(context),
                    height: height(context) * .5,
                    color: Colors.white,
                    child: SafeArea(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              GaugeChart(
                                children: [
                                  PieData(
                                    value: 50,
                                    color: Colors.blue.shade800,
                                    description: "Taken",
                                  ),
                                  PieData(
                                    value: 30,
                                    color: Colors.blue.shade300,
                                    description: "Planned",
                                  ),
                                  PieData(
                                    value: 50,
                                    color: const Color.fromARGB(
                                        255, 241, 165, 191),
                                    description: "To plan",
                                  ),
                                ],
                                gap: 10,
                                animateDuration: const Duration(seconds: 1),
                                start: 100,
                                displayIndex: 3,
                                shouldAnimate: true,
                                animateFromEnd: false,
                                isHalfChart: false,
                                size: 100,
                                showValue: false,
                                borderWidth: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: Container(
            //     width: width(context),
            //     height: height(context) * .4,
            //     color: Colors.white,
            //     child: Column(
            //       children: [
            //         SizedBox(
            //           height: 40,
            //         ),
            //         Text(
            //           "Maintain Daily Habbit",
            //           style: GoogleFonts.lato(
            //             color: const Color.fromARGB(255, 4, 72, 128),
            //             fontSize: 25,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.all(20),
            //           child: Text(
            //             textAlign: TextAlign.center,
            //             "A Habbit tracker is a simple way to messure when you did a habbit, the most basic format is to get calender",
            //             style: GoogleFonts.lato(
            //               fontSize: 15,
            //               color: const Color.fromARGB(255, 139, 138, 138),
            //             ),
            //           ),
            //         ),
            //         InkWell(
            //           onTap: () {},
            //           child: Stack(
            //             alignment: Alignment.center,
            //             children: [
            //               ClipRRect(
            //                 borderRadius: BorderRadius.circular(10),
            //                 child: BlurredImage(
            //                   blur: 2,
            //                   image: Image.asset(
            //                     imagePath + "blur.png",
            //                     fit: BoxFit.cover,
            //                     width: 200,
            //                     height: 60,
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                   alignment: Alignment.center,
            //                   width: 200,
            //                   height: 60,
            //                   decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(20),
            //                     // color: Colors.white.withOpacity(.5),
            //                   ),
            //                   child: Text(
            //                     "Get Started",
            //                     style: GoogleFonts.lato(
            //                         fontSize: 17,
            //                         fontWeight: FontWeight.bold,
            //                         color: mainColor),
            //                   )),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double loc = 10;
    double s = 10;
    final path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo((size.width * .5) - 120, size.height-5)
      ..cubicTo(
        (size.width * .5) -120,
        size.height-5,
        (size.width * .5) - 80,
        size.height - 10,
        (size.width * .5) -50 ,
        size.height-40,
      )
      ..cubicTo(
        (size.width * .5) - 50,
        size.height-40,
        (size.width * .5),
        size.height - 80,
        (size.width * .5) + 50,
        size.height - 40,
      )
      ..cubicTo(
        (size.width * .5) + 50,
        size.height - 40,
        (size.width * .5) + 80,
        size.height - 10,
        (size.width * .5) + 120,
        size.height-5,
      )
      ..lineTo((size.width * .5) + 120, size.height-5)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      // // ..quadraticBezierTo(size.width - 5, 0, size.width, 10)
      // ..lineTo(size.width, size.height)
      // ..lineTo(0, size.height)
      ..close(); // Complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
