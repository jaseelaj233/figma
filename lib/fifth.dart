import 'package:flutter/material.dart';

class Fifth extends StatefulWidget {
  const Fifth({super.key});

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-06-15 at 10.40.57 AM.jpeg'),
                    fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/jose.jpg'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
