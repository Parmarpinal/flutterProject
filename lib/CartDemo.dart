import 'package:flutter/material.dart';
import './homeNew.dart';

class ListItem {
  String img;
  String name;
  String desc;
  int quantity;
  bool isFavourite = false;

  ListItem(
      {required this.img,
        required this.name,
        required this.desc,
        required this.quantity});
}

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<ListItem> items = [
    ListItem(
        name: 'Chocolate',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup1.png",
        quantity: 3),
    ListItem(
        name: 'MANGO',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup2.png",
        quantity: 4),
    ListItem(
        name: 'GUAVA',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup3.png",
        quantity: 1),
    ListItem(
        name: 'Butterscoch',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup4.webp",
        quantity: 2),
    ListItem(
        name: 'Strawberry',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/icecup1.png",
        quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xFFfa64ac),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 15,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "My",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Cart",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        // margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        height: 70,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Positioned(
                      left: 27,
                      bottom: 7,
                      child: Container(
                        height: 70,
                        padding: EdgeInsets.only(right: 20),
                        width: MediaQuery.of(context).size.width - 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.pink.shade100,
                                        borderRadius:
                                        BorderRadius.circular(15)),
                                    height: 70,
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    child: Container(
                                      child: Image.asset(items[index].img,
                                          fit: BoxFit.cover),
                                      height: 70,
                                      width: 70,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Expanded(
                              child: Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    items[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    items[index].desc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Wrap(
                                    spacing: 10,
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.pink.shade100,
                                          borderRadius:
                                          BorderRadius.circular(7),
                                        ),
                                        child: IconButton(
                                            padding: EdgeInsets.all(0),
                                            onPressed: () {
                                              setState(() {
                                                items[index].isFavourite =
                                                !items[index].isFavourite;
                                              });
                                            },
                                            icon: (items[index].isFavourite ==
                                                true)
                                                ? Icon(Icons.favorite)
                                                : Icon(Icons
                                                .favorite_border_sharp),
                                            iconSize: 15,
                                            color: Colors.pink),
                                      ),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.pink.shade100,
                                          borderRadius:
                                          BorderRadius.circular(7),
                                        ),
                                        child: IconButton(
                                            padding: EdgeInsets.all(0),
                                            onPressed: () {
                                              setState(() {
                                                items.removeAt(index);
                                              });
                                            },
                                            icon: Icon(
                                                Icons.delete_forever_sharp),
                                            iconSize: 15,
                                            color: Colors.pink),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  width: 60,
                                  height: 80,
                                  padding: EdgeInsets.fromLTRB(15, 7, 0, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    items[index].quantity.toString(),
                                    style: TextStyle(
                                        fontSize: 27,
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 45),
                                  margin: EdgeInsets.fromLTRB(45, 13, 0, 0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 6,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            items[index].quantity++;
                                          });
                                        },
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Colors.pink.shade100,
                                              borderRadius:
                                              BorderRadius.circular(6)),
                                          child: Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                color: Colors.pink,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            items[index].quantity--;
                                            if (items[index].quantity < 1) {
                                              items[index].quantity = 1;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Colors.pink.shade100,
                                              borderRadius:
                                              BorderRadius.circular(6)),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Center(
                                              child: Text(
                                                "-",
                                                // textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 30,
                  color: Color(0xFFfa64ac),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Center(
                child: Wrap(
                  spacing: 12,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.white60, fontSize: 20),
                    ),
                    Text(
                      "\$68.84",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homeNew()));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Center(
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
