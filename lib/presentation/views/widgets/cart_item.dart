import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String path ;
  final double left , right , top , bottom ;
  const CartItem({
    super.key, required this.path, required this.left, required this.right, required this.top, required this.bottom,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom : bottom ,
      left: left,
      right :  right,
      child:
      Image.asset(path, fit: BoxFit.scaleDown,),
    );
  }
}
