import 'package:flutter/material.dart';
import 'package:payment_integration/presentation/views/widgets/cart_item.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset('assets/images/cart.png'),
            const CartItem(
              top: 220,
              left: 50,
              bottom: 0,
              right: 80,
              path: "assets/images/item3.png",
            ),
            const CartItem(
              top: 130,
              left: 110,
              bottom: 30,
              right: 50,
              path: "assets/images/item2.png",
            ),
            const CartItem(
              top: 80,
              left: 50,
              bottom: 180,
              right: 80,
              path: "assets/images/item1.png",
            ),


          ],
        ),
      ],
    );
  }
}
