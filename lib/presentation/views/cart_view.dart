import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_integration/presentation/views/widgets/cart_item.dart';
import 'package:payment_integration/presentation/views/widgets/shopping_cart.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const ShoppingCart(),
             const SizedBox(height : 20 ),
             const Padding(
               padding: EdgeInsets.symmetric(vertical : 8.0, horizontal: 15),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Order Subtotal",style: TextStyle(fontSize: 17),),
                       Text("\$42.97",style: TextStyle(fontSize: 17),),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Discount",style: TextStyle(fontSize: 17),),
                       Text("\$0",style: TextStyle(fontSize: 17),),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Shipping",style: TextStyle(fontSize: 17),),
                       Text("\$8",style: TextStyle(fontSize: 17),),
                     ],
                   ),
                   Divider(
                     indent: 30,
                     endIndent: 30,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Total",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                       Text("\$50.97",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                     ],
                   ),


                 ],
               ),
             ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )),
                        backgroundColor: MaterialStatePropertyAll(Color(0XFF34A853),

                        )
                      ) ,
                        onPressed: () {

                        }, child: const Text("Complete Payment",style: TextStyle(color: Colors.black,fontSize: 20),)),
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}


