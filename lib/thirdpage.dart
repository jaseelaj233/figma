import 'package:figma/homepage.dart';
import 'package:figma/sign.dart';
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 249, 252),
      body: Column(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-06-14 at 11.17.37 AM.jpeg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Color.fromARGB(222, 132, 83, 160)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Color.fromARGB(222, 132, 83, 160)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Do you have an accound',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Sign(),
                      ));
                    },
                    child: Text('signup'),
                  )
                ],
              ),
            ),
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
                      builder: (context) => Home(),
                    ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(222, 132, 83, 160)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
