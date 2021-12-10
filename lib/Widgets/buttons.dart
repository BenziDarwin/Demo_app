import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Components/colors.dart';

class CircularButton extends StatelessWidget {
  final Function() onTap;
  final String? label;
  final double? fontSize;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;



  const CircularButton({
    Key? key ,
    required this.onTap,
    this.label,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.white,
    required this.icon,
    this.fontSize = 18,
    this.iconColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [Container(
            width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
          ),
          child: Icon(icon,size: 50, color: iconColor,),
        ),
          label!=null ? Text(
              label!,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
            )
          ): Container()
      ]),
    );
  }
}
