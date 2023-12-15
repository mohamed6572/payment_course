import 'package:flutter/material.dart';
import 'package:payment_course/core/utils/styles.dart';
import 'package:payment_course/core/widgets/customButton.dart';
import 'package:payment_course/features/checkout/presentation/views/payments_details.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/PaymentMethoudsListView.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/total_price.dart';

import 'orderInfoItem.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/cart.png')),
          SizedBox(
            height: 15,
          ),
          OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          Divider(
            thickness: 1,
            color: Color(0xffC7C7C7),
            height: 34,
          ),
          TotalPrice(
            title:'Total' ,
            value: r'$50.97',
          ),
          SizedBox(height: 16,),
          customButton(
            title: 'Complete Paymentd',
             onTap: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentsDetailsView(),));
               showBottomSheet(context: context,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16)
                 ),
                 builder: (context) {
                 return PaymentMethoudsBottomSheet() ;
               },);
             }
          ),
          SizedBox(height: 12,),
        ],
      ),
    );
  }
}


class PaymentMethoudsBottomSheet extends StatelessWidget {
  const PaymentMethoudsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
          PaymentMethoudsListView(),
          SizedBox(height: 32,),
          customButton(title: 'Continue',onTap: (){},)
        ],
      ),
    );
  }
}
