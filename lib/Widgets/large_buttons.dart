import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Components/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;


  const AppLargeButton({
    Key? key,
    this.backgroundColor : AppColor.mainColor,
    this.isBorder : false,
    this.onTap,
    this.textColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 20, right: 20),
        height: 60,
        width: MediaQuery.of(context).size.width-40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          )
        ),
        child: Center(
          child: Text(
              text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
