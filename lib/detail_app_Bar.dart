import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/clothes_model.dart';
import 'package:e_commerce_app/color_Picker.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Clothes clothes;

  DetailAppBar(this.clothes);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  final List<Color> colors = [
    Colors.blue.withOpacity(0.7),
    Colors.amber.withOpacity(0.7),
    Colors.deepPurple.withOpacity(0.7),
    Colors.black.withOpacity(0.7),
  ];

  final CarouselController _controller = CarouselController();
  int _currentPage = 0;
  int _currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 500,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  }),
              items: widget.clothes.clothesDetailUrl
                  .map((String e) => Builder(
                        builder: (context) => Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("$e"),
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 180,
            child: Row(
              children: widget.clothes.clothesDetailUrl
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.withOpacity(
                              _currentPage == entry.key ? 0.9 : 0.4,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Container(
              height: 175,
              width: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: colors.length,
                separatorBuilder: (_, index) => SizedBox(
                  height: 3,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentColor = index;
                    });
                  },
                  child: ColorPicker(
                    _currentColor == index,
                    colors[index],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                          size: 20,
                        )),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade500,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade500,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
