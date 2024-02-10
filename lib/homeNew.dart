import 'package:flutter/material.dart';

class ListItem {
  String img;
  String name;
  String desc;
  double price;
  bool isFavourite = false;

  ListItem(
      {required this.img,
      required this.name,
      required this.desc,
      required this.price});
}

class ListBox {
  String name;
  String path;

  ListBox({required this.name, required this.path});
}

class homeNew extends StatefulWidget {
  homeNew({super.key});

  @override
  State<homeNew> createState() => _homeNewState();
}

class _homeNewState extends State<homeNew> {
  List<ListItem> items = [
    ListItem(
      name: 'Chocolate',
      desc: 'Rolled Ice Cream',
      img: "images/icecream/cup1.png",
      price: 80,
    ),
    ListItem(
        name: 'MANGO',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup2.png",
        price: 65.50),
    ListItem(
        name: 'GUAVA',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup3.png",
        price: 40.60),
    ListItem(
        name: 'Butterscoch',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/cup4.webp",
        price: 85.50),
    ListItem(
        name: 'Strawberry',
        desc: 'Rolled Ice Cream',
        img: "images/icecream/icecup1.png",
        price: 100),
  ];

  List<ListBox> boxes = [
    ListBox(name: "Cup", path: "images/icecream/cupicon.png"),
    ListBox(name: "Candy", path: "images/icecream/candyicon.png"),
    ListBox(name: "Cone", path: "images/icecream/coneicon.png"),
    ListBox(name: "Chocolate", path: "images/icecream/chocolateicon.png"),
    ListBox(name: "Shake", path: "images/icecream/shakeicon.png"),
    ListBox(name: "Softy", path: "images/icecream/softyicon.png")
  ];
  String activatedIcon = 'Cup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height * 0.05,
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: TextField(
                              cursorColor: Colors.white,
                              cursorHeight:
                                  MediaQuery.of(context).size.height * 0.035,
                              cursorRadius: Radius.circular(10),
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.only(bottom: 3),
                                // contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                prefixIcon: Container(
                                  margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.pink,
                                      size: 15,
                                    ),
                                    radius: MediaQuery.of(context).size.height *
                                        0.01,
                                    backgroundColor: Colors.white,
                                    // MediaQuery.of(context).size.width * 0.005,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                fillColor: Colors.pink.shade400,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height * 0.05,
                              )),
                          Container(
                            width: MediaQuery.of(context).size.height * 0.05,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            child: Image.asset("images/icecream/person.png",
                                fit: BoxFit.cover),
                            // child: ClipRRect(child: Image.asset("images/icecream/person1.jpg",fit: BoxFit.cover,)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: -10,
                    children: [
                      Text(
                        "Hello Roee, Choose Your",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                      Text(
                        "Best Icecream",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: boxes.length,
                      // padding: EdgeInsets.all(20),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 10, 0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                activatedIcon = boxes[index].name;
                              });
                            },
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.shortestSide *
                                          0.18,
                                  height:
                                      MediaQuery.of(context).size.shortestSide *
                                          0.09,
                                  decoration: BoxDecoration(
                                      color:
                                          (activatedIcon == boxes[index].name)
                                              ? Color(0xFFfa64ac)
                                              : Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Positioned(
                                  bottom: 30,
                                  child: Image.asset(
                                    boxes[index].path,
                                    color: (activatedIcon == boxes[index].name)
                                        ? Colors.brown.shade900
                                        : Color(0xFFfa64ac),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context)
                                            .size
                                            .shortestSide *
                                        0.12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(top: 23),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade100,
                                      borderRadius: BorderRadius.circular(10)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                ),
                                Positioned(
                                  top: -20,
                                  left:
                                      MediaQuery.of(context).size.width * 0.18,
                                  child: CircleAvatar(
                                    child: Image.asset(items[index].img),
                                    backgroundColor: Color(0xFFfa64ac),
                                    radius: MediaQuery.of(context)
                                            .size
                                            .shortestSide *
                                        0.15,
                                  ),
                                ),
                                Positioned(
                                  top:
                                      MediaQuery.of(context).size.shortestSide *
                                          0.18,
                                  left:
                                      MediaQuery.of(context).size.shortestSide *
                                          0.1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: MediaQuery.of(context)
                                                .size
                                                .shortestSide *
                                            0.05,
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  items[index].isFavourite =
                                                      !items[index].isFavourite;
                                                });
                                              },
                                              icon: (items[index].isFavourite ==
                                                      true)
                                                  ? Icon(
                                                      Icons.favorite,
                                                      color: Colors.pink,
                                                      size: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .shortestSide *
                                                          0.05,
                                                    )
                                                  : Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.pink,
                                                      size: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .shortestSide *
                                                          0.05,
                                                    )),
                                        ),
                                      ),
                                      Text(
                                        items[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.04),
                                      ),
                                      Text(
                                        items[index].desc,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.03),
                                      ),
                                      Text(
                                        "\$${items[index].price.toString()}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.04),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    flex: 5,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
