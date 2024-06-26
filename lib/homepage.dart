import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List buttons = [
    'Report an Incident',
    'Find your pet',
    'Adopt',
    'Donate',
    'Booking',
    'Medicine',
    'About us'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/jose.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 500,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 50,
                          width: 50,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              buttons[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(222, 132, 83, 160)),
                            ),
                          ));
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20,
                        ),
                    itemCount: 7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
