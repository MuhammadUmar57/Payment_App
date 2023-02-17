// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class contactContainer extends StatelessWidget {
  // const contactContainer({super.key});

  List<String> images = [
    "assets/images/fourth.png",
    "assets/images/one.webp",
    "assets/images/third.jpg",
    "assets/images/fourth.png",
    "assets/images/one.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
      ),
      child: Container(
        height: 180.0,
        width: 380.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                  child: Text(
                    "Refer to a Friend and get \n\$15 in your account",
                    style: GoogleFonts.acme(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                  child: Container(
                    height: 60.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            SizedBox(
              height: 80.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.circular(60.0),
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
