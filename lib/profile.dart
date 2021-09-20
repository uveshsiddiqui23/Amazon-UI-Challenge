import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140.0,
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.cyan.shade300, Colors.white])),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/amazonlogoone.png"),
                                    fit: BoxFit.fitWidth)),
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                size: 25.0,
                              ),
                              Icon(Icons.search)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 90.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: Text(
                              "Sign in for the best\nexperience",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22.0),
                            ),
                          )
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(width: 1.0, color: Colors.grey)),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 18.0),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(width: 1.0, color: Colors.grey)),
                    child: Center(
                      child: Text(
                        "Create account",
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 18.0),
                      ),
                    ),
                  )),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/amazonbox.png"),
                            fit: BoxFit.fill)),
                  ),
                  Text("Check order status and\ntrack, change or return\nitems",
                      style: TextStyle(
                          fontSize: 18.0, color: Colors.grey.shade800))
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/shoppingbag.png"),
                            fit: BoxFit.fill)),
                  ),
                  Text("Shop past purchase and\neveryday essentials",
                      style: TextStyle(fontSize: 18.0))
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/chartpaper.png"),
                            fit: BoxFit.fill)),
                  ),
                  Text("Create lists with items you\nwant, now or later",
                      style: TextStyle(fontSize: 18.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
