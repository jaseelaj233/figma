import 'package:figma/homepage.dart';
import 'package:figma/pick.dart';
import 'package:flutter/material.dart';

class Arrive extends StatefulWidget {
  const Arrive({super.key});

  @override
  State<Arrive> createState() => _ArriveState();
}

class _ArriveState extends State<Arrive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(children: [
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
            ]),
            Row(
              children: [
                Text(
                  'confirmed',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_back)
              ],
            ),
            Row(
              children: [
                Text(
                  'Arrived at',
                  style: TextStyle(fontSize: 25),
                ),
                Icon(Icons.map)
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
          ],
        ),
      ),
    );
  }
}
