import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:ecommerce_app/core/configs/assets/app_images.dart';
import 'package:ecommerce_app/presentation/provider/cloth_new_data/cloth_new_data.dart';
import 'package:ecommerce_app/presentation/provider/cloth_on_sale_data/cloth_on_sale_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image:DecorationImage(
                    fit: BoxFit.fill,
                      image: AssetImage(
                        AppImages.homeBG
                      )
                  )
                ),
              ),
              const Positioned(
                  bottom: 20.0,
                  left: 15.0,
                  child: Text(
                      'Street Clothes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  )
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //Sale Column
                    Column(
                      children: [
                        const
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sale',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34
                              ),
                            ),
                            Text(
                                'View all'
                            )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Supper summer sale',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9B9B9B)
                            ),
                          ),
                        ),
            
                        Consumer<ClothSaleData>(
                          builder: (context, cnData , child) {
                            return Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              height: 280,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: cnData.saleClothQuantity,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index){
                                    return GestureDetector(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          height: 260,
                                          width: 160,
                                          child: Stack(
                                            children: [
                                              Image(
                                                  image: AssetImage(
                                                      cnData.saleClothes[index].clothItemPath.toString()
                                                  )
                                              ),
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
                                                  child: Center(
                                                    child: Text(
                                                      textAlign: TextAlign.center,
                                                      '${cnData.saleClothes[index].percentDiscount}',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 12
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                bottom: 60,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.3), // Adjust the color and opacity as needed
                                                        blurRadius: 5, // The spread of the shadow
                                                        offset: const Offset(0, 2), // Horizontal and vertical offset
                                                      ),
                                                    ],
                                                  ),
                                                  child: const Icon(
                                                    Icons.favorite_border_outlined,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 190,
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
                                                        Text('(${cnData.saleClothes[index].quantity})')
                                                      ],
                                                    ),
                                                    Text(
                                                        '${cnData.saleClothes[index].name}',
                                                      style: const TextStyle(
                                                        color: Color(0xff9B9B9B)
                                                      ),
                                                    ),
                                                    Text(
                                                        '${cnData.saleClothes[index].category}',
                                                      style: const TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16
                                                      ),
                                                    ),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                            '${cnData.saleClothes[index].originalPrice}',
                                                          style: const TextStyle(
                                                            decoration: TextDecoration.lineThrough,
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 16,
                                                            color: Color(0xff9B9B9B)
                                                          ),
                                                        ),
                                                        SizedBox(width: 5,),
                                                        Text(
                                                            '${cnData.saleClothes[index].discountPrice}',
                                                          style: const TextStyle(
                                                            color: AppColors.primary,
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 15
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //new clothes
                    Column(
                      children: [
                        const
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'New',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34
                              ),
                            ),
                            Text(
                                'View all'
                            )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'You\'ve never seen it before!',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B)
                            ),
                          ),
                        ),
            
                        Consumer<ClothNewData>(
                          builder: (context, cnData , child) {
                            return Container(
                              margin: const EdgeInsets.only(top: 20.0),
                              height: 280,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: cnData.newClothQuantity,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index){
                                    return GestureDetector(
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 20.0),
                                        child: SizedBox(
                                          height: 260,
                                          width: 160,
                                          child: Stack(
                                            children: [
                                              Image(
                                                  image: AssetImage(
                                                      cnData.newClothes[index].clothItemPath.toString()
                                                  )
                                              ),
                                              Positioned(
                                                top: 10,
                                                left: 10,
                                                child: Container(
                                                  height: 27,
                                                  width: 42,
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      textAlign: TextAlign.center,
                                                      '${cnData.newClothes[index].label}',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 12
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                right: 0,
                                                bottom: 60,
                                                child: Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.3), // Adjust the color and opacity as needed
                                                        blurRadius: 5, // The spread of the shadow
                                                        offset: const Offset(0, 2), // Horizontal and vertical offset
                                                      ),
                                                    ],
                                                  ),
                                                  child: const Icon(
                                                    Icons.favorite_border_outlined,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 190,
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
                                                        Text('(${cnData.newClothes[index].quantity})')
                                                      ],
                                                    ),
                                                    Text(
                                                      '${cnData.newClothes[index].name}',
                                                      style: const TextStyle(
                                                          color: Color(0xff9B9B9B)
                                                      ),
                                                    ),
                                                    Text(
                                                      '${cnData.newClothes[index].category}',
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text(
                                                      '${cnData.newClothes[index].price}',
                                                      style: const TextStyle(
                                                          color: AppColors.primary,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 15
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            );
                          },
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
