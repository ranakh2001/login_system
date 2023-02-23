// ignore_for_file: file_names

import 'package:chat/view/widgets/other-platforms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithOther extends StatelessWidget {
  const LoginWithOther({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: const Color.fromARGB(255, 224, 228, 235),
                width: 140,
                height: 3,
              ),
              Text(
                "OR",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                color: const Color.fromARGB(255, 224, 228, 235),
                width: 140,
                height: 3,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtherPlatforms(
                  icon: Image.asset("assets/images/facebook.png"),
                  onpress: () {}),
              OtherPlatforms(
                  icon: Image.asset("assets/images/google.png"),
                  onpress: () {}),
              OtherPlatforms(
                  icon: Image.asset("assets/images/tik-tok.png"),
                  onpress: () {}),
            ],
          ),
        ),
       
      ],
    );
  }
}
