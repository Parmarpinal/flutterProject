import 'package:flutter/material.dart';
import './pistaicecream.dart';

class ListItem {
  String path;
  String name;
  double price;
  Color bgcol;
  Color fontcol;
  int star;
  int calory;
  int energy;
  int calcium;
  int sugar;

  ListItem(
      {required this.path,
      required this.name,
      required this.price,
      required this.bgcol,
      required this.fontcol,
      required this.star,
      required this.calory,
      required this.energy,
      required this.calcium,
      required this.sugar});
}

class ListBox {
  String name;
  String path;

  ListBox({required this.name, required this.path});
}

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<ListItem> items = [
    ListItem(
        path: "images/icecream/cup1.png",
        name: "Chocolate",
        price: 60,
        fontcol: Colors.brown.shade800,
        star: 4,
        bgcol: Colors.brown.shade300,
        calcium: 20,
        calory: 1500,
        energy: 1200,
        sugar: 0),
    ListItem(
        path: "images/icecream/cup3.png",
        name: "Pistachio",
        bgcol: Colors.green.shade300,
        fontcol: Colors.green.shade900,
        price: 80,
        star: 5,
        calcium: 40,
        calory: 1300,
        energy: 1400,
        sugar: 3),
    ListItem(
        path: "images/icecream/icecreamcup2.png",
        name: "Strawberry",
        bgcol: Colors.pink.shade200,
        fontcol: Colors.pink.shade700,
        price: 80,
        star: 5,
        calcium: 250,
        calory: 1600,
        energy: 1000,
        sugar: 2)
  ];

  List<ListBox> boxes = [
    ListBox(name: "Cup", path: "images/icecream/cupicon.png"),
    ListBox(name: "Candy", path: "images/icecream/candyicon.png"),
    ListBox(name: "Cone", path: "images/icecream/coneicon.png"),
    ListBox(name: "Chocolate", path: "images/icecream/chocolateicon.png"),
    ListBox(name: "Shake", path: "images/icecream/shakeicon.png"),
    ListBox(name: "Softy", path: "images/icecream/softyicon.png")
  ];

  String selectedIcon = 'Cup';

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: MediaQuery.of(context).size.height - 100,
                      decoration: BoxDecoration(
                          color: Color(0xFFfa64ac),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40))),
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(blurRadius: 10, color: Colors.pink)
                              ]),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.grid_view_rounded,
                                      color: Colors.pink,
                                    )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(color: Colors.pink, blurRadius: 10)
                              ]),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search,
                                      color: Color(0xfff40d30),
                                    )),
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: -50,
                              textDirection: TextDirection.rtl,
                              children: [
                                Text(
                                  "THE WORLD OF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "yummm",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 70,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "French Script MT",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.20,
                              child: Image.asset(
                                "images/icecream/icecup1.png",
                                // width: MediaQuery.of(context).size.width*0.6,
                                // height: MediaQuery.of(context).size.height*0.2,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                ),
              ],
            ),
            flex: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIcon = boxes[index].name;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            child: (Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: (selectedIcon == boxes[index].name)
                                          ? Color(0xfff40d30)
                                          : Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset(
                                    boxes[index].path,
                                    width: MediaQuery.of(context).size.height *
                                        0.06,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    fit: BoxFit.cover,
                                    color: (selectedIcon == boxes[index].name)
                                        ? Colors.white
                                        : Colors.grey.shade800,
                                  ),
                                ),
                                Text(
                                  boxes[index].name,
                                  style: TextStyle(
                                      color: (selectedIcon == boxes[index].name)
                                          ? Color(0xfff40d30)
                                          : Colors.grey,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )),
                          ),
                        );
                      },
                      itemCount: boxes.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: Color(0xfff40d30),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => pista(
                                      // name: items[index].name,
                                      // path: items[index].path,
                                      // calcium: items[index].calcium,
                                      // calory: items[index].calory,
                                      // energy: items[index].energy,
                                      // sugar: items[index].sugar,
                                      data: items[index],
                                    ),
                                  ));
                            },
                            child: (Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Center(
                                    child: Container(
                                  decoration: BoxDecoration(
                                    color: items[index].bgcol,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: MediaQuery.of(context).size.width - 50,
                                  height: 60,
                                )),
                                Container(
                                  width: MediaQuery.of(context).size.width - 35,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  items[index].name,
                                                  style: TextStyle(
                                                      color:
                                                          items[index].fontcol,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      "\$" +
                                                          items[index]
                                                              .price
                                                              .toString(),
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade200,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.star,
                                                            size: 15,
                                                            color: items[index]
                                                                .fontcol),
                                                        Icon(Icons.star,
                                                            size: 15,
                                                            color: items[index]
                                                                .fontcol),
                                                        Icon(Icons.star,
                                                            size: 15,
                                                            color: items[index]
                                                                .fontcol),
                                                        Icon(Icons.star,
                                                            size: 15,
                                                            color: items[index]
                                                                .fontcol),
                                                        Icon(Icons.star,
                                                            size: 15,
                                                            color: items[index]
                                                                .fontcol),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          flex: 4,
                                        ),
                                        // Image.asset(items[index].path,
                                        //     width: 80,
                                        //     height: 80,
                                        //     fit: BoxFit.fill),
                                        CircleAvatar(
                                          // child: Image.asset(items[index].path),
                                          backgroundImage:
                                              AssetImage(items[index].path),
                                          backgroundColor:
                                              Colors.amber.shade100,
                                          radius: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.white60,
                            height: 5,
                          );
                        },
                        itemCount: items.length))
              ],
            ),
            flex: 2,
          )
        ],
      ),
    ));
  }
}
