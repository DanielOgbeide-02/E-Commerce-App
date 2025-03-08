import 'package:ecommerce_app/core/configs/Theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class AddToFavorites extends StatefulWidget {
  const AddToFavorites({
    super.key,
  });


  @override
  State<AddToFavorites> createState() => _AddToFavoritesState();
}

class _AddToFavoritesState extends State<AddToFavorites> {

  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
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
      child: GestureDetector(
        onTap: (){
          setState(() {
            isLiked = !isLiked;
          });
        },
        child: Icon(
          // Icons.favorite_border_outlined,
          FontAwesomeIcons.solidHeart,
          color: isLiked?Colors.red:null,
          size: 18,
        ),
      ),
    );
  }
}