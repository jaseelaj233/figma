import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton(
      {super.key, required this.buttonText, required this.onPress});

  final String buttonText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          TextButton(
            onPressed: onPress(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                buttonText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(222, 132, 83, 160))),
          )
        ],
      ),
    );
  }
}
