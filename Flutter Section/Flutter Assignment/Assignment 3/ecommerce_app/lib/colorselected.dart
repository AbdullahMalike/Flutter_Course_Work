import 'package:flutter/material.dart';

class ColorSelector extends StatelessWidget {
  final List<String> colorList;
  final Function(String) onColorSelected;

  ColorSelector(this.colorList, this.onColorSelected);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colorList.map((color) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: ElevatedButton(
            onPressed: () {
              onColorSelected(color);
            },
            child: Text(color.toString()),
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          ),
        );
      }).toList(),
    );
  }
}
