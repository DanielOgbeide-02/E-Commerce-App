import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clothCategory extends StatelessWidget {
  const clothCategory({
    super.key,
    required this.category
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 120,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
