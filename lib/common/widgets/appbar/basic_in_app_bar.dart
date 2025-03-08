import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hideBack;


  const InAppBar({
    Key? key,
    required this.title,
    this.hideBack = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.chevronLeft,
                  )
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold
                ),
              ),

              IconButton(
                  onPressed: (){},
                  icon: const Icon(
                      Icons.search
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0); // Adjust height as needed
}
