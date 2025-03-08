import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({Key?key, this.width, this.height, this.buttonText, this.buttonColor, this.buttonTextColor, this.onPressed, this.isLoading = false, this.isPressed = false}):super(key: key){}
  final double? width;
  final double? height;
  final String? buttonText;
  final Color? buttonTextColor;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isPressed;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: widget.buttonColor,                    ),
      width: widget.width,
      height: widget.height,
      child: TextButton(
          onPressed: (widget.isPressed)?null:widget.onPressed,
          child:
          (widget.isLoading)?Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${widget.buttonText}',
                style: TextStyle(
                  color: widget.buttonTextColor,
                  fontSize: 13,
                  letterSpacing: 1,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 15,),
              SizedBox(
                height: 13,
                width:  13,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ],
          ):
          Text(
            '${widget.buttonText}',
            style: TextStyle(
              color: widget.buttonTextColor,
              fontSize:13,
              letterSpacing: 1,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          )
      ),
    );
  }
}