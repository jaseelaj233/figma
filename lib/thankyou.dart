import 'package:figma/homepage.dart';
import 'package:figma/missing.dart';
import 'package:flutter/material.dart';

class Thankyou extends StatefulWidget {
  const Thankyou({super.key});

  @override
  State<Thankyou> createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thankyou',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        " assets/WhatsApp Image 2024-06-30 at 12.03.38 PM (1).jpeg",
                      ),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Horse',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'color:brown',
          style: TextStyle(fontSize: 15, color: Colors.amber),
        ),
        Text(
          'Draft type',
          style: TextStyle(fontSize: 15, color: Colors.amber),
        ),
        Text(
          'Missing on:02/10/2022',
          style: TextStyle(fontSize: 15, color: Colors.amber),
        ),
        Text(
          'Missing from:perinthalmanna',
          style: TextStyle(fontSize: 15, color: Colors.amber),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => Missing(),
                  // ));
                },
                child: const Text(
                  'Call owner',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: const ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(222, 14, 172, 183))),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(
                222,
                132,
                83,
                160,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 20,
                    color: Colors.white,
                  )),
            )
          ],
        )
      ]),
    ));
  }
}
