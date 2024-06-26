import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 249, 252),
      body: Column(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-06-14 at 11.17.37 AM.jpeg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: InputDecoration(
              hintText: 'OTP',
              hintStyle: TextStyle(color: Color.fromARGB(222, 132, 83, 160)),
            )),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: 200,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(222, 132, 83, 160)),
                )),
          )
        ],
      ),
    );
  }
}
