import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class front extends StatelessWidget {
  const front({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Color(0xFFfa64ac),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                "Ice Cream",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontFamily: "Lucida Handwriting"),
              ),
              Text(
                "Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontFamily: "Lucida Handwriting"),
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Transform.rotate(
                  angle: 120,
                  child: Image.asset(
                    "images/icecream/icecreamcone.png",
                    height: MediaQuery.of(context).size.height - 330,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.03),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xfff40d30),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        },
                        icon: Icon(Icons.arrow_right_alt_outlined),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
