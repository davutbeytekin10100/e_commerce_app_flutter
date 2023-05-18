
import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {

  final bool outherBorder;
  final Color color;

  ColorPicker(this.outherBorder, this.color);

  @override
  Widget build(BuildContext context) {
    return Container( // outher container..
      padding: EdgeInsets.all(3),

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: outherBorder ? Border.all(color: color,width: 2) : null,
      ),

      child: Container( // inner container
        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
