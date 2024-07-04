import 'package:figma/adopt.dart';
import 'package:figma/customimages.dart';
import 'package:flutter/material.dart';

class Adoptmissing extends StatefulWidget {
  const Adoptmissing({super.key});

  @override
  State<Adoptmissing> createState() => _AdoptmissingState();
}

class _AdoptmissingState extends State<Adoptmissing> {
  List<String> items = [
    "dog",
    "cat",
    "donkey",
    "elephent",
    "cow",
  ];
  List images = [
    "assets/WhatsApp Image 2024-06-30 at 12.03.38 PM (1).jpeg",
    "assets/WhatsApp Image 2024-06-30 at 12.03.37 PM.jpeg",
    "assets/WhatsApp Image 2024-06-30 at 12.41.40 PM (1).jpeg",
    "assets/WhatsApp Image 2024-06-30 at 12.26.54 PM.jpeg",
    "assets/WhatsApp Image 2024-06-30 at 12.41.40 PM.jpeg",
    "assets/WhatsApp Image 2024-06-30 at 12.50.11 PM.jpeg"
  ];
  List<Widget> routes = [
    Adopt(),
    Text("data"),
    Text("data"),
    Text("data"),
    Text("data"),
    Text("data"),
  ];

  List<String> filterdItem = [];

  @override
  void initstate() {
    super.initState();
    filterdItem.addAll(items);
  }

  void filterItems(String query) {
    query = query.toLowerCase();
    setState(() {
      filterdItem =
          items.where((item) => item.toLowerCase().contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'search Animals',
                hintStyle: TextStyle(
                  color: Color.fromARGB(
                    222,
                    132,
                    83,
                    160,
                  ),
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(
                    222,
                    132,
                    83,
                    160,
                  ),
                  size: 30,
                )),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Missing Animals',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                        222,
                        132,
                        83,
                        160,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 570,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3),
                    itemBuilder: (context, index) {
                      return Photos(
                          buttonimg: images[index], pageNa: routes[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
