import 'package:flutter/material.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/payment_details_view_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class PaymentsDetailsView extends StatelessWidget {
  const PaymentsDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}
