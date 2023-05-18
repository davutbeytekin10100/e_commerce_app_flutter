import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final _myTagsList = ["Man", "Jacket", "Dress"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.pink.shade500,
                  decoration: InputDecoration(
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "search Here...",
                    hintStyle: TextStyle(color: Colors.pink.shade500),
                    labelText: "Search",
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        "assets/icons/search.png",
                        width: 20,
                        color: Colors.pink.shade500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.pink.shade500,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: Colors.deepPurple),
                ),
                child: Image.asset(
                  "assets/icons/filter.png",
                  width: 23,
                  color: Colors.amber.shade500,
                ),
              )
            ],
          ),
          Row(
            children: _myTagsList
                .map((String dress) => Container(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.amber.shade500),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade500,
                      ),
                      child: Text(
                        dress,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
