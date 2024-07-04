import 'package:figma/homepage.dart';
import 'package:figma/reportmissing.dart';
import 'package:figma/thankyou.dart';
import 'package:flutter/material.dart';

class Missing extends StatefulWidget {
  const Missing({super.key});

  @override
  State<Missing> createState() => _MissingState();
}

class _MissingState extends State<Missing> {
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
              'Missing',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 218, 169, 165)),
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
                        " assets/WhatsApp Image 2024-06-14 at 11.17.37 AM.jpeg",
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
          height: 10,
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Thankyou(),
                  ));
                },
                child: Text(
                  'Found',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(222, 116, 11, 95))),
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
                      builder: (context) => Animalmisssing(),
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
