import 'package:flutter/material.dart';
import 'package:payment_course/core/widgets/custom_app_bar.dart';
import 'package:payment_course/features/checkout/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: Transform.translate(
        offset: Offset(0,-16),
          child: ThankYouViewBody()),
    );
  }
}
