import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({super.key, required this.buttonimg, required this.pageNa});
  final String buttonimg;
  final Widget pageNa;

  @override
  Widget build(BuildContext context) {
    int index;
    List images = [
      "assets/WhatsApp Image 2024-06-30 at 12.03.38 PM (1).jpeg",
      "assets/WhatsApp Image 2024-06-30 at 12.03.37 PM.jpeg",
      "assets/WhatsApp Image 2024-06-30 at 12.41.40 PM (1).jpeg",
      "assets/WhatsApp Image 2024-06-30 at 12.26.54 PM.jpeg",
      "assets/WhatsApp Image 2024-06-30 at 12.41.40 PM.jpeg",
      "assets/WhatsApp Image 2024-06-30 at 12.50.11 PM.jpeg"
    ];

    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => pageNa,
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('')),
          ),
          // child: SizedBox(
          //   height: 570,
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: GridView.builder(
          //       scrollDirection: Axis.vertical,
          //       itemCount: images.length,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2, crossAxisSpacing: 3, mainAxisSpacing: 3),
          //       itemBuilder: (context, index) {
          //         return Container(
          //           decoration: BoxDecoration(
          //               image: DecorationImage(image: AssetImage(images[index]))),
          //         );
          //       },
          //     ),
          //   ),
          // )
        ));
  }
}
