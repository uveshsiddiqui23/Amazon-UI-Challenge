import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.cyan.shade200, Colors.cyan.shade100])),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20.0,
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
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.cyan.shade50, Colors.cyan.shade100])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Text(
                              "Select a location to see product availability"),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/amazonbasket.png"),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Amazon Basket is\nempty",
                          style: TextStyle(fontSize: 17.0)),
                      Text(
                        "Shop today's deals",
                        style:
                            TextStyle(color: Colors.lightBlueAccent.shade700),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Center(
                    child: Text(
                      "Sign in to your account",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Center(
                    child: Text(
                      "Sign up now",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(),
              SizedBox(
                height: 3.0,
              ),
              Divider(),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  child: Center(
                    child: Text(
                      "Continue Shopping",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
