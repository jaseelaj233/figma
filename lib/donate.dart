import 'package:figma/homepage.dart';
import 'package:figma/upi.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 25,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'Netbanking',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Upi(),
                  ));
                },
                icon: Icon(
                  Icons.payments_rounded,
                  size: 25,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'UPI',
                style: TextStyle(fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
