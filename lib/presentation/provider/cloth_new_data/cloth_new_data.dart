import 'package:ecommerce_app/core/configs/assets/app_images.dart';
import 'package:ecommerce_app/domain/entities/models/clothes_new/clothes_new.dart';
import 'package:ecommerce_app/domain/entities/models/clothes_on_sale/clothes_on_sale.dart';
import 'package:flutter/cupertino.dart';

class ClothNewData extends ChangeNotifier{
  List<ClothesNewEntity> newClothItems = [
    ClothesNewEntity(
        label: 'NEW',
        price: '15\$',
        name: 'Dorothy Perkins',
        category: 'Evening Dress',
        clothItemPath: AppImages.dressItem_1,
        quantity: 10
    ),
    ClothesNewEntity(
        label: 'NEW',
        price: '15\$',
        name: 'Dorothy Perkins',
        category: 'Evening Dress',
        clothItemPath: AppImages.dressItem_1,
        quantity: 10
    ),
    ClothesNewEntity(
        label: 'NEW',
        price: '15\$',
        name: 'Dorothy Perkins',
        category: 'Evening Dress',
        clothItemPath: AppImages.dressItem_1,
        quantity: 10
    ),
    ClothesNewEntity(
        label: 'NEW',
        price: '15\$',
        name: 'Dorothy Perkins',
        category: 'Evening Dress',
        clothItemPath: AppImages.dressItem_1,
        quantity: 10
    ),
  ];

  int get newClothQuantity =>newClothItems.length;

  List<ClothesNewEntity> get newClothes {
    return List<ClothesNewEntity>.from(newClothItems);
  }


}