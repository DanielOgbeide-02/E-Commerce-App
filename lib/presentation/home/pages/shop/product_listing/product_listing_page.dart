import 'package:ecommerce_app/common/widgets/appbar/basic_in_app_bar.dart';
import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/widgets/cloth_category/cloth_category.dart';
import '../../../../../common/widgets/product_listing_item/product_listing_item.dart';
import '../../../../../core/configs/assets/app_images.dart';
import '../../../../../core/configs/assets/app_vectors.dart';
import '../../../../../domain/entities/models/cloth_category/cloth_category.dart';

class ProductListingPage extends StatelessWidget {
  const ProductListingPage({super.key});
  static String id = 'product_listing_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Column(
        children: [
          const InAppBar(title: 'Women\'s tops'),
          Container(
            height: 110,
            // width: double.infinity,
            padding: EdgeInsets.only(top: 10,bottom: 10, left: 15),
            decoration: BoxDecoration(
              color: AppColors.lightBackground,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 3,
                    offset: Offset(0, 2)  // Position of the shadow (x, y)
              )]
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemCount: 4,
                    itemBuilder: (context, index) {
                      ClothCategory clothCat = ClothCategory();
                      return
                      clothCategory(category: clothCat.categoryList[index],);
                    }
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Row(
                      children: [
                        SvgPicture.asset(
                            height: 17,
                            width: 17,
                            AppVectors.filterIcon
                        ),
                        SizedBox(width: 10,),
                        Text('Filters', style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset(
                            height: 17,
                            width: 17,
                            AppVectors.sortIcon
                        ),
                        SizedBox(width: 10,),
                        Text('Price: lowest to high', style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset(
                            height: 17,
                            width: 17,
                            AppVectors.viewlistIcon
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                  ],
                )
              ],
            ),
          ),
           const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.tShirts, onDiscount: false,
                        ),
                        Spacer(),
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.blouse,
                          onDiscount: true,
                          discountedAmount: '6\$',
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.tShirts,
                          onDiscount: false,
                        ),
                        Spacer(),
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.blouse,
                          onDiscount: true,
                          discountedAmount: '6\$',
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.tShirts, onDiscount: false,
                        ),
                        Spacer(),
                        ListingPageItem(
                          itemName: 'Mango',
                          generalName: 'T-Shirt SPANISH',
                          amount: '9\$',
                          itemImage: AppImages.blouse,
                          onDiscount: true,
                          discountedAmount: '6\$',
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




