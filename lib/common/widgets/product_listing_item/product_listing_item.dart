import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/configs/Theme/app_colors.dart';
import '../add_to_fav/add_to_fav.dart';


class ListingPageItem extends StatelessWidget {
  const ListingPageItem({
    super.key,
    required this.itemName,
    required this.generalName,
    required this.amount,
    required this.itemImage,
    required this.onDiscount,
    this.discountedAmount
  });

  final String? itemName;
  final String? generalName;
  final String? amount;
  final String? discountedAmount;
  final String? itemImage;
  final bool? onDiscount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 190,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image:
              AssetImage(
                  itemImage!
                // AppImages.blouse,
              ),
              width: 190,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              right: 0,
              bottom: 70,
              child: AddToFavorites()
          ),
          (onDiscount??true)?
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 27,
              width: 42,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  '-10%',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),
                ),
              ),
            ),
          ):SizedBox.shrink(),
          Positioned(
              top: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                          minRating: 1,
                          maxRating: 5,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 15,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context,_)=>const Icon(
                            Icons.star,
                            color: Color(0xffFFBA49),
                            size: 1,
                          ),
                          onRatingUpdate: (rating){
                            print(rating);
                          }
                      ),
                      Text('(3)', style: TextStyle(color: Colors.grey.withOpacity(0.7)),)
                    ],
                  ),
                  Text(itemName!, style: TextStyle(color: Colors.grey.withOpacity(0.7)),),
                  Text(generalName!, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                  Row(
                    children: [
                      Text(amount!, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: (onDiscount??true)?Colors.grey:Colors.black, decoration: (onDiscount??true)?TextDecoration.lineThrough:TextDecoration.none)),
                      SizedBox(width: 5,),
                      (onDiscount??true)?Text(discountedAmount!, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: AppColors.primary)):SizedBox.shrink(),

                    ],
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}

