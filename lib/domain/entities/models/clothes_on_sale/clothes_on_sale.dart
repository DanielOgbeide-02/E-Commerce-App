import 'package:flutter/cupertino.dart';

class ClothSaleEntity{
  String ? percentDiscount;
  String ? originalPrice;
  String ? discountPrice;
  String ? name;
  String ? category;
  String ? clothItemPath;
  int ? quantity;


  ClothSaleEntity({
    this.percentDiscount,
    this.originalPrice,
    this.discountPrice,
    this.name,
    this.category,
    this.clothItemPath,
    this.quantity
});

}