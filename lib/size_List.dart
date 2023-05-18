import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ["S", "M", "L", "XL", "XXL"];
  var currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
        itemCount: sizeList.length,
        separatorBuilder: (_, index) => SizedBox(
          width: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelected = index;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: currentSelected == index
                  ? Colors.blue.withOpacity(0.4)
                  : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: Colors.green),
            ),
            child: Text(
              sizeList[index],
              style: TextStyle(
                  color: currentSelected == index
                      ? Colors.amber.shade500
                      : Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
