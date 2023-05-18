import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Hi , What Are You\nLooking For ? ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  TextSpan(
                    text: "👗",
                    style: TextStyle(fontSize: 22),
                  )
                ]),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(9),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple,
                        offset: Offset(1, 2),
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ]),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade500,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
