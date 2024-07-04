import 'package:figma/adddecs.dart';
import 'package:flutter/material.dart';

class Callwet extends StatefulWidget {
  const Callwet({super.key});

  @override
  State<Callwet> createState() => _CallwetState();
}

class _CallwetState extends State<Callwet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage:
                    AssetImage('assets/866184-80369-saejeawfkt-1517070355.jpg'),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
                decoration: InputDecoration(
              hintText: 'Description',
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      ' Call Vet',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(222, 132, 83, 160))),
              ),
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
                          builder: (context) => Decription(),
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
