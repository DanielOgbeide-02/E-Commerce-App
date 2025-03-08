import 'package:ecommerce_app/presentation/home/pages/shop/product_listing/product_listing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/Theme/app_colors.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({super.key, required this.itemName, required this.itemImage, this.onPressed});
  final String itemName;
  final Image itemImage;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                // onPressed!();
                Navigator.pushNamed(context, ProductListingPage.id);
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                ),
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      itemName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                  child: itemImage
              )
          )
        ],
      ),
    );

  }
}
