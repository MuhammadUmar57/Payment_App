// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment/widget/card.dart';
import 'package:payment/widget/contact_container.dart';
import 'package:payment/widget/transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 185, 167),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image(
                      image: AssetImage("assets/icons/cards.png"),
                      height: 55.0,
                    ),
                  ),
                  const SizedBox(
                    width: 220.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        "Add Card",
                        style: GoogleFonts.acme(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // atm card
              Container(
                height: 30.0,
                width: 350.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
              ),
              myCard(),

              contactContainer(),

              //
              //
//
//
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "Transaction",
                      style: GoogleFonts.acme(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140.0,
                    ),
                    Text(
                      "View All",
                      style: GoogleFonts.acme(
                        color: Colors.black87,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),

              Transaction(
                circlename: "EH",
                headName: "Esther Howard",
                date: "04 Dec, 2023",
              ),
              Transaction(
                circlename: "S",
                headName: "StarBucks",
                date: "16 Jan, 2023",
              ),
              Transaction(
                circlename: "P",
                headName: "Parking",
                date: "10 Feb, 2023",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
