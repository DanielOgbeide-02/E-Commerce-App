import 'package:ecommerce_app/core/configs/assets/app_images.dart';
import 'package:ecommerce_app/domain/entities/models/clothes_on_sale/clothes_on_sale.dart';
import 'package:flutter/cupertino.dart';

class ClothSaleData extends ChangeNotifier{
  List<ClothSaleEntity> saleClothItems = [
    ClothSaleEntity(
      percentDiscount: '-20%',
      originalPrice: '15\$',
      discountPrice: '12\$',
      name: 'Dorothy Perkins',
      category: 'Evening Dress',
      clothItemPath: AppImages.dressItem_1,
      quantity: 10
    ),
    ClothSaleEntity(
      percentDiscount: '-15%',
      originalPrice: '22\$',
      discountPrice: '19\$',
      name: 'Sitlly',
      category: 'Sport Dress',
      clothItemPath: AppImages.dressItem_2,
      quantity: 5
    ),
    ClothSaleEntity(
      percentDiscount: '20%',
      originalPrice: '15\$',
      discountPrice: '12\$',
      name: 'Dorothy Perkins',
      category: 'Sport Dress',
      clothItemPath: AppImages.dressItem_2,
      quantity: 6
    ),
    ClothSaleEntity(
      percentDiscount: '20%',
      originalPrice: '15\$',
      discountPrice: '12\$',
      name: 'Dorothy Perkins',
      category: 'Evening Dress',
      clothItemPath: AppImages.dressItem_1,
      quantity: 7
    )
  ];

  int get saleClothQuantity =>saleClothItems.length;

  List<ClothSaleEntity> get saleClothes {
    return List<ClothSaleEntity>.from(saleClothItems);
  }


}