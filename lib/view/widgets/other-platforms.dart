// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OtherPlatforms extends StatelessWidget {
  Widget icon;
  Function onpress;
  OtherPlatforms({
    Key? key,
    required this.icon,
    required this.onpress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 248, 248, 248),
            padding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          onPressed: () {
            onpress;
          },
          child: icon),
    );
  }
}
