import 'package:figma/adddecs.dart';
import 'package:figma/homepage.dart';
import 'package:figma/submitt.dart';
import 'package:flutter/material.dart';

class Found extends StatefulWidget {
  const Found({super.key});

  @override
  State<Found> createState() => _FoundState();
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    List buttonsname = [
      'Found a Woundes Animal',
      'Found an Agressive Animal',
      'Wild Animal Onsight',
      'Abuse towards Animal'
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                              height: 50,
                              width: 200,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Decription()));
                                },
                                child: Text(
                                  buttonsname[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(222, 132, 83, 160)),
                                ),
                              )),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                      itemCount: 4),
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
