import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.cyan.shade300, Colors.white])),
        child: Column(children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: 40.0,
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search Amazon.in",
                suffixIcon: Icon(
                  Icons.camera_enhance_outlined,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 173.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text("Your Orders",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Buy Again",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Your Wish List",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Your Account",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Shop by Category",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Amazon Pay",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Program and Features",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text("Settings",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.w600)),
                      Container(
                        width: 50.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/indianflag.png"),
                                fit: BoxFit.fill)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Customer Service",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text("Sign In",
                      style: TextStyle(
                          fontSize: 21.0, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
