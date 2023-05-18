import 'package:e_commerce_app/best_Seller.dart';
import 'package:e_commerce_app/custom_app_Bar.dart';
import 'package:e_commerce_app/new_Arrival.dart';
import 'package:e_commerce_app/search_Input.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final _bottomNavigatorList = ["home", "menu", "heart", "user"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSeller(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedFontSize: 15,
        selectedItemColor: Colors.deepPurple,
        items: _bottomNavigatorList
            .map((String bottom) => BottomNavigationBarItem(
                  label: bottom,
                  icon: Image.asset(
                    "assets/icons/$bottom.png",
                    width: 24,
                    color: Colors.pink.shade500,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
