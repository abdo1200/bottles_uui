import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/one.jpg'),
        Text(
          "No ads while \nlistening music",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 199, 59),
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          child: Text(
            "Listening to music is very comfertable without any annoying adds",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 19, 54, 33),
                // fontWeight: FontWeight.bold
                ),
          ),
        )
      ],
    );
  }
}

// "No ads while \nlistening music"
// "Listening to music is very comfertable without any annoying adds"