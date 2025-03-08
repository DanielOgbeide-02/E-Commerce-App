import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hideBack;

  const AuthAppbar({
    Key? key,
    required this.title,
    this.hideBack = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              // Icons.chevron_left,
              FontAwesomeIcons.chevronLeft,
              size: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 34,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0); // Adjust height as needed
}
