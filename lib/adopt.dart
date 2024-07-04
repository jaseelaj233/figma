import 'package:figma/adoptmissing.dart';
import 'package:figma/homepage.dart';
import 'package:figma/pick.dart';
import 'package:figma/reportmissing.dart';
import 'package:flutter/material.dart';

class Adopt extends StatefulWidget {
  const Adopt({super.key});

  @override
  State<Adopt> createState() => _AdoptState();
}

class _AdoptState extends State<Adopt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          'collected on:02/9/2022',
          style: TextStyle(fontSize: 15, color: Colors.amber),
        ),
        Text(
          'Collect from from:vilayur',
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
                    builder: (context) => Pick(),
                  ));
                },
                child: Text(
                  'Adopt',
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
                      builder: (context) => Adoptmissing(),
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
