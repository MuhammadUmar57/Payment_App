// ignore_for_file: prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myCard extends StatelessWidget {
  const myCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      width: 380.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                child: Text(
                  "Available Balance",
                  style: GoogleFonts.acme(
                    color: Colors.white54,
                    fontSize: 19.0,
                  ),
                ),
              ),
              SizedBox(
                width: 140.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Icon(
                  Icons.payment,
                  color: Colors.white54,
                  size: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "\$20,000",
              style: GoogleFonts.acme(
                fontSize: 60.0,
                color: Colors.white,
              ),
            ),
          ),

          // dotted container

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 25.0),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  color: Colors.white,
                  strokeWidth: 5,
                  dashPattern: [6, 6, 6, 6],
                  radius: Radius.circular(20.0),
                  //padding: EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: Container(
                      height: 50.0,
                      width: 90.0,
                      color: Colors.black,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // send button
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                child: Container(
                  height: 60.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/icons/send.png",
                      ),
                      height: 50.0,
                      width: 40.0,
                    ),
                  ),
                ),
              ),

              // more button

              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 25.0),
                child: Container(
                  height: 60.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        "assets/icons/app.png",
                      ),
                      height: 50.0,
                      width: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
