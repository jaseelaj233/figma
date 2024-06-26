import 'package:figma/thirdpage.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 249, 252),
      body: Column(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-06-14 at 11.17.37 AM.jpeg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nurture.Protect.Love.Heal.',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(222, 132, 83, 160)),
                ),
              ],
            ),
          ),
          const Text(
            'you are on your destination where you',
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            'get the opertunity tto express your ',
            style: TextStyle(fontSize: 18),
          ),
          const Text('empathy towards those animals in',
              style: TextStyle(fontSize: 18)),
          const Text('their most needed situation',
              style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Third(),
                  ));
                },
                child: const Text(
                  'Get started',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: const ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(222, 132, 83, 160))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
