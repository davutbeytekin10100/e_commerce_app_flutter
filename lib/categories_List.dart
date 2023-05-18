import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  final String title;

  CategoriesList(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.pink.shade500),
          ),
          Row(
            children: [
              Text(
                "View All...",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.amber.shade500,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber.shade500,
                  border: Border.all(width: 1, color: Colors.deepPurple),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
