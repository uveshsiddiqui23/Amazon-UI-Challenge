import 'package:flutter/material.dart';

class AmazonHome extends StatefulWidget {
  @override
  _AmazonHomeState createState() => _AmazonHomeState();
}

class _AmazonHomeState extends State<AmazonHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 140.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.cyan.shade200,
                    Colors.cyan.shade100
                  ])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200.0,
                      height: 80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.menu),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              width: 150.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/amazonlogoone.png"))),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.shopping_cart),
                    )
                  ],
                ),
                Positioned(
                    top: 85.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
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
                    ))
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 223.0,
              color: Colors.black12,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.cyan.shade50,
                        Colors.cyan.shade100
                      ])),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 7.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/mobiles.jpg", "Mobiles"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/gadgets.png", "Gadgets"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/home.jpg", "Home"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/appliances.jpg", "Appliances"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/grocery.jpg", "Grocery"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/fashion.png", "Fashion"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/essential.png", "Essentials"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/cosmetic.png", "Cosmetic"),
                          SizedBox(
                            width: 7.0,
                          ),
                          buildItems("assets/pantry.png", "Pantry"),
                        ],
                      ),
                    ),
                  ),
                  Stack(children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 320.0,
                        color: Colors.black12),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180.0,
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            image: DecorationImage(
                                image: AssetImage("assets/mobilesale.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Positioned(
                      top: 180.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 200.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 7.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7.0),
                                      child: Text(
                                        "Welcome",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7.0),
                                      child: Text(
                                          "Sign in for the best experience",
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey)),
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15.0))),
                                        child: Center(
                                          child: Text(
                                            "Sign In",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7.0),
                                      child: Text("Create an account",
                                          style: TextStyle(color: Colors.blue)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.0),
                              buildProductItemsOne("assets/shampoo.png"),
                              SizedBox(width: 5.0),
                              buildProductItemsOne("assets/earphonepic.jpg"),
                              SizedBox(
                                width: 5.0,
                              ),
                              buildProductItemsOne("assets/amazonprime.jpg"),
                              SizedBox(width: 5.0),
                              buildProductItemsOne("assets/highend.jpg")
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 7.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/samsungmobile.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 430.0,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            "Deals of the Day",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.grey),
                          ),
                        ),
                        Divider(),
                        Center(
                          child: Container(
                            width: 250.0,
                            height: 170.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/applemobile.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text("iPhone XR | Starting Rs. 40999",
                              style: TextStyle(color: Colors.grey)),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text("Rs 40,999.00 - Rs 45,999.0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text("Ends in 5:20:29"),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 7.0),
                            Container(
                              width: 60.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("assets/iphonexss.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              width: 60.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/iphonetwelvepromax.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              width: 60.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/iphonehomescreen.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                                width: 60.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/iphoneheadphone.jpeg"),
                                        fit: BoxFit.fill))),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                                width: 60.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/iphoneearbuds.jpg"),
                                        fit: BoxFit.fill)))
                          ],
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text("See all details",
                              style:
                                  TextStyle(color: Colors.cyanAccent.shade100)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400.0,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            "Free Shipping | Great price on pet\nsupplies",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 280.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/petsupplies.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 69.0,
                            color: Colors.white,
                            child: Center(
                              child: Image.asset(
                                "assets/amazonsave.png",
                                width: 250.0,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 432.0,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                              "Up to 70% off | 4 star plus rated\nproducts",
                              style: TextStyle(fontSize: 22.0)),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 365.0,
                          color: Colors.white,
                          child: GridView(
                            physics: ScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 9.0,
                                    crossAxisSpacing: 4.0),
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage("assets/fogdeo.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/wheyprotein.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/sunglases.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/menscloth.png"),
                                        fit: BoxFit.fill)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/amazonprimepic.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    height: 320.0,
                    decoration:
                        BoxDecoration(color: Colors.cyan.withOpacity(0.5)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text("Budget friendly stores",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text("Electronics, fashion, home & more"),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 250.0,
                            //color: Colors.yellow,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 5.0),
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    buildBudgetFriendlyitems(
                                        "assets/mobilefstore.png",
                                        Colors.white,
                                        "Budget mobiles",
                                        "Starting Rs 5,999"),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    buildBudgetFriendlyitems(
                                        "assets/kitchenandhome.png",
                                        Colors.white,
                                        "Home & Kitchen",
                                        "Starting Rs 2,999"),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    buildBudgetFriendlyitems(
                                        "assets/menswear.png",
                                        Colors.white,
                                        "Mens Cloths",
                                        "Starting Rs 1299"),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    buildBudgetFriendlyitems(
                                        "assets/baby.png",
                                        Colors.white,
                                        "Baby Cloths",
                                        "Starting Rs 3999"),
                                    SizedBox(
                                      width: 7.0,
                                    ),
                                    buildBudgetFriendlyitems(
                                        "assets/womencloths.png",
                                        Colors.white,
                                        "Women Cloths",
                                        "Starting Rs 2999"),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                      height: 435.0,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text(
                                "Up to 60% off | Handbag,\nsunglasses & more",
                                style: TextStyle(fontSize: 20.0)),
                          ),
                          SizedBox(
                            height: 18.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 363.0,
                              color: Colors.black12,
                              child: GridView(
                                physics: ScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 2.0,
                                        crossAxisSpacing: 2.0),
                                children: [
                                  Container(
                                    width: 150.0,
                                    height: 150.0,
                                    color: Colors.red,
                                    child: Center(
                                        child: Image.asset(
                                            "assets/wheyproteingnc.png")),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/handbags.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/handbagstwo.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/menbelt.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/wallet.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/menwatch.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/mencap.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/mensunglass.png"),
                                              fit: BoxFit.fill))),
                                  Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/menshoes.png"),
                                              fit: BoxFit.fill))),
                                ],
                              ))
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  buildItems(String imgPath, String itemName) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill),
            ),
          ),
          Text(itemName)
        ],
      ),
    );
  }

  buildProductItemsOne(String imgPath) {
    return Container(
      width: 110.0,
      height: 120.0,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          border: Border.all(width: 3.0, color: Colors.grey),
          image: DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill)),
    );
  }

  buildBudgetFriendlyitems(
      String imgPath, Color bgColor, String itemName, String price) {
    return Container(
      width: 120.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 190.0,
            decoration: BoxDecoration(
                border:
                    Border.all(width: 4.0, color: Colors.grey.withOpacity(0.3)),
                color: bgColor,
                image: DecorationImage(
                  image: AssetImage(imgPath),
                )),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            itemName,
            style: TextStyle(color: Colors.black),
          ),
          Text(price)
        ],
      ),
    );
  }
}
