import 'package:figma/about.dart';
import 'package:figma/adoptmissing.dart';
import 'package:figma/booking.dart';
import 'package:figma/custombutton.dart';
import 'package:figma/donate.dart';
import 'package:figma/found.dart';
import 'package:figma/medicin.dart';
import 'package:figma/myreports.dart';
import 'package:figma/reportmissing.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> buttons = [
    'Report an Incident',
    'Find your pet',
    'Adopt',
    'Donate',
    'Booking',
    'Medicine',
    'About us'
  ];
  List<Widget> routes = [
    Found(),
    Reports(),
    Adoptmissing(),
    Donate(),
    Booking(),
    Medicin(),
    About(),
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
                      return Custombutton(
                          buttonText: buttons[index], pageName: routes[index]);
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
