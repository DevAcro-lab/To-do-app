import 'package:flutter/material.dart';
import 'package:todoeyyyy/widgets/categories_container.dart';

class RowOfCategories extends StatelessWidget {
  const RowOfCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryContainer(
            imageString: 'images/graduation-hat.png', title: 'School'),
        CategoryContainer(imageString: 'images/console.png', title: 'Holiday'),
        CategoryContainer(
            imageString: 'images/cooperation.png', title: 'Business'),
        CategoryContainer(
            imageString: 'images/shopping-bag.png', title: 'Shopping'),
      ],
    );
  }
}
