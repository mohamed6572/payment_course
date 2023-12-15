
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_course/core/utils/styles.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/total_price.dart';

import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0+16.0,left: 22,right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            SizedBox(height: 42,),
            PaymentItemInfo(
              value: '01/24/2023',
              title: 'Date',
            ),
            SizedBox(height: 20,),
            PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            SizedBox(height: 20,),
            PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            Divider(thickness: 2,height: 60,),
            TotalPrice(title: 'Total', value: r'$50.97'),
            SizedBox(height: 30,),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode,size: 64,),

                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style24!.copyWith(color: Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height:( (MediaQuery.of(context).size.height * 0.2 +20)/2) -29 ,)
          ],
        ),
      ),
    );
  }
}

