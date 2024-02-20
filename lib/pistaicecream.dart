import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './CartDemo.dart';

class pista extends StatefulWidget {
//   String name;
//   String path;
//   int calory;
//   int energy;
//   int calcium;
//   int sugar;
//
//   pista({
//     required this.name,
//     required this.path,
//     required this.calory,
//     required this.energy,
//     required this.calcium,
//     required this.sugar
// })
  dynamic data;
  pista({required this.data});

  @override
  State<pista> createState() => _pistaState();
}

class _pistaState extends State<pista> {
  int count = 0;
  String selectedSize = '';
  int total = 0;

  // void updateSelectedSize(String newSize) {
  //   setState(() {
  //     selectedSize = newSize;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ac_unit_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "${widget.data.name}\nIce Cream",
                  style: GoogleFonts.allura(
                    textStyle: TextStyle(
                      color: Color(0xFFfa64ac),
                      fontSize: MediaQuery.of(context).size.height * 0.06,
                      fontFamily: "Lucida Handwriting",
                      fontWeight: FontWeight.w900,
                    ),
                  )
                )
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: -8,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.data.calory.toString(),
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.03,
                                    )),
                                Text("KCal",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02)),
                              ],
                            ),
                            Text("Calories",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02)),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: -8,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.data.energy.toString(),
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03)),
                                Text("KL",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02)),
                              ],
                            ),
                            Text("Energy",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02)),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: -8,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.data.calcium.toString(),
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03)),
                                Text("%",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02)),
                              ],
                            ),
                            Text("Calcium",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02)),
                          ],
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          spacing: -8,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(widget.data.sugar.toString(),
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03)),
                                Text("g",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.02)),
                              ],
                            ),
                            Text("Sugar",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFfa64ac),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            widget.data.path,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            // width: 100,
                            // height: 100,
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSize = "S";
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: (selectedSize == "S")
                                        ? Colors.pink
                                        : Color(0xFFfa64ac),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSize = "M";
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: (selectedSize == "M")
                                        ? Colors.pink
                                        : Color(0xFFfa64ac),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "M",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSize = "L";
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: (selectedSize == "L")
                                        ? Colors.pink
                                        : Color(0xFFfa64ac),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "L",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              // TextButton(onPressed: (){}, child: Text("s"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.indigo)),),
                              // TextButton(
                              //   child: Text(
                              //     "S",
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize:
                              //             MediaQuery.of(context).size.height *
                              //                 0.03,
                              //         fontWeight: FontWeight.w600),
                              //   ),
                              //   onPressed: () => updateSelectedSize('S'),
                              //   style: ButtonStyle(
                              //     backgroundColor: selectedSize == 'S'
                              //         ? MaterialStateProperty.all(Colors.pink)
                              //         : null,
                              //   ),
                              // ),
                              // TextButton(
                              //   child: Text(
                              //     "M",
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize:
                              //             MediaQuery.of(context).size.height *
                              //                 0.03,
                              //         fontWeight: FontWeight.w600),
                              //   ),
                              //   onPressed: () => updateSelectedSize('M'),
                              //   style: ButtonStyle(
                              //     backgroundColor: selectedSize == 'M'
                              //         ? MaterialStateProperty.all(Colors.pink)
                              //         : null,
                              //   ),
                              // ),
                              // TextButton(
                              //   child: Text(
                              //     "L",
                              //     style: TextStyle(
                              //         color: Colors.white,
                              //         fontSize:
                              //             MediaQuery.of(context).size.height *
                              //                 0.03,
                              //         fontWeight: FontWeight.w600),
                              //   ),
                              //   onPressed: () => updateSelectedSize('L'),
                              //   style: ButtonStyle(
                              //     backgroundColor: selectedSize == 'L'
                              //         ? MaterialStateProperty.all(Colors.pink)
                              //         : null,
                              //   ),
                              // ),
                              // "M",
                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: MediaQuery.of(context).size.height*0.03,
                              //     fontWeight: FontWeight.w600),

                              // Container(
                              //     child: Text(
                              //   "L",
                              //   style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize:
                              //           MediaQuery.of(context).size.height * 0.03,
                              //       fontWeight: FontWeight.w600),
                              // )),
                            ],
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Wrap(
                            direction: Axis.vertical,
                            spacing: 5,
                            children: [
                              Text(
                                "Qty:",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.03),
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          count--;
                                          if (count <= 0) {
                                            count = 1;
                                          }
                                          total = widget.data.price * count;
                                        });
                                      },
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            color: Color(0xfff40d30),
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.03,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Text(
                                      count.toString(),
                                      style: TextStyle(
                                          color: Color(0xfff40d30),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    InkWell(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              color: Color(0xfff40d30),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            count++;
                                            total = widget.data.price * count;
                                          });
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            flex: 5,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$${total.toString()}",
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: MediaQuery.of(context).size.height * 0.04,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ],
            ),
            flex: 2,
          ),
          Expanded(
            child: InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Place Order",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.w400)),
                      Icon(Icons.arrow_right_alt_sharp,
                          color: Colors.white, size: 50),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
