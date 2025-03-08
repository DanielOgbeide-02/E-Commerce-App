import 'package:flutter/cupertino.dart';

import '../../../core/configs/assets/app_images.dart';
import '../salesbar/splash_sales_bar.dart';
import 'categories_items.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SplashSalesBar(
            salesText: 'SUMMER SALES',
            salesDetails: 'Up to 50% off'
        ),
        const SizedBox(
          height: 15,
        ),
        CategoriesItems(
            itemName: 'New',
            itemImage: const Image(
              image: AssetImage(AppImages.newItems),
              fit: BoxFit.cover,
            ),
          onPressed: (){

          },
        ),
        const SizedBox(
          height: 15,
        ),
        const CategoriesItems(
            itemName: 'Clothes',
            itemImage: Image(
              image: AssetImage(AppImages.clothItems),
              fit: BoxFit.cover,
            )
        ),
        const SizedBox(
          height: 15,
        ),
        const CategoriesItems(
            itemName: 'Shoes',
            itemImage: Image(
              image: AssetImage(AppImages.shoesItems),
              fit: BoxFit.cover,
            )
        ),
        const SizedBox(
          height: 15,
        ),
        const CategoriesItems(
            itemName: 'Accesories',
            itemImage: Image(
              image: AssetImage(AppImages.accesoriesItems),
              fit: BoxFit.cover,
            )
        )
        ,
        const SizedBox(
          height: 15,
        ),
        const CategoriesItems(
            itemName: 'Others',
            itemImage: Image(
              image: AssetImage(AppImages.clothItems),
              fit: BoxFit.cover,
            )
        )
      ],
    );
  }
}