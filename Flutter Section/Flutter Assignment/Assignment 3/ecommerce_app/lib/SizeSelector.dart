import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final List<int> sizeList;
  final Function(int) onSizeSelected;

  SizeSelector(this.sizeList, this.onSizeSelected);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: sizeList.map((size) {
        return ElevatedButton(
          onPressed: () {
            onSizeSelected(size);
          },
          child: Text(size.toString()),
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
        );
      }).toList(),
    );
  }
}
